require "application_system_test_case"

class FieldClassesTest < ApplicationSystemTestCase
  setup do
    @field_class = field_classes(:one)
  end

  test "visiting the index" do
    visit field_classes_url
    assert_selector "h1", text: "Field Classes"
  end

  test "creating a Field class" do
    visit field_classes_url
    click_on "New Field Class"

    fill_in "Insurance program", with: @field_class.insurance_program
    fill_in "Name", with: @field_class.name
    click_on "Create Field class"

    assert_text "Field class was successfully created"
    click_on "Back"
  end

  test "updating a Field class" do
    visit field_classes_url
    click_on "Edit", match: :first

    fill_in "Insurance program", with: @field_class.insurance_program
    fill_in "Name", with: @field_class.name
    click_on "Update Field class"

    assert_text "Field class was successfully updated"
    click_on "Back"
  end

  test "destroying a Field class" do
    visit field_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Field class was successfully destroyed"
  end
end
