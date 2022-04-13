require "application_system_test_case"

class TittlesTest < ApplicationSystemTestCase
  setup do
    @tittle = tittles(:one)
  end

  test "visiting the index" do
    visit tittles_url
    assert_selector "h1", text: "Tittles"
  end

  test "should create tittle" do
    visit tittles_url
    click_on "New tittle"

    fill_in "Content", with: @tittle.content
    click_on "Create Tittle"

    assert_text "Tittle was successfully created"
    click_on "Back"
  end

  test "should update Tittle" do
    visit tittle_url(@tittle)
    click_on "Edit this tittle", match: :first

    fill_in "Content", with: @tittle.content
    click_on "Update Tittle"

    assert_text "Tittle was successfully updated"
    click_on "Back"
  end

  test "should destroy Tittle" do
    visit tittle_url(@tittle)
    click_on "Destroy this tittle", match: :first

    assert_text "Tittle was successfully destroyed"
  end
end
