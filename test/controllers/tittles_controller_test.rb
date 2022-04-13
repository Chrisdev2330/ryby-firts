require "test_helper"

class TittlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tittle = tittles(:one)
  end

  test "should get index" do
    get tittles_url
    assert_response :success
  end

  test "should get new" do
    get new_tittle_url
    assert_response :success
  end

  test "should create tittle" do
    assert_difference("Tittle.count") do
      post tittles_url, params: { tittle: { content: @tittle.content } }
    end

    assert_redirected_to tittle_url(Tittle.last)
  end

  test "should show tittle" do
    get tittle_url(@tittle)
    assert_response :success
  end

  test "should get edit" do
    get edit_tittle_url(@tittle)
    assert_response :success
  end

  test "should update tittle" do
    patch tittle_url(@tittle), params: { tittle: { content: @tittle.content } }
    assert_redirected_to tittle_url(@tittle)
  end

  test "should destroy tittle" do
    assert_difference("Tittle.count", -1) do
      delete tittle_url(@tittle)
    end

    assert_redirected_to tittles_url
  end
end
