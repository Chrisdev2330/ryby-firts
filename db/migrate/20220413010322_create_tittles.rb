class CreateTittles < ActiveRecord::Migration[7.0]
  def change
    create_table :tittles do |t|
      t.text :content

      t.timestamps
    end
  end
end
