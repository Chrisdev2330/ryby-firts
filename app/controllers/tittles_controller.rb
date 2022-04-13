class TittlesController < ApplicationController
  before_action :set_tittle, only: %i[ show edit update destroy ]

  # GET /tittles or /tittles.json
  def index
    @tittles = Tittle.all
  end

  # GET /tittles/1 or /tittles/1.json
  def show
  end

  # GET /tittles/new
  def new
    @tittle = Tittle.new
  end

  # GET /tittles/1/edit
  def edit
  end

  # POST /tittles or /tittles.json
  def create
    @tittle = Tittle.new(tittle_params)

    respond_to do |format|
      if @tittle.save
        format.html { redirect_to tittle_url(@tittle), notice: "Tittle was successfully created." }
        format.json { render :show, status: :created, location: @tittle }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tittle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tittles/1 or /tittles/1.json
  def update
    respond_to do |format|
      if @tittle.update(tittle_params)
        format.html { redirect_to tittle_url(@tittle), notice: "Tittle was successfully updated." }
        format.json { render :show, status: :ok, location: @tittle }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tittle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tittles/1 or /tittles/1.json
  def destroy
    @tittle.destroy

    respond_to do |format|
      format.html { redirect_to tittles_url, notice: "Tittle was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tittle
      @tittle = Tittle.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tittle_params
      params.require(:tittle).permit(:content)
    end
end
