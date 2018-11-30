require "application_system_test_case"

class CalculationTypesTest < ApplicationSystemTestCase
  setup do
    @calculation_type = calculation_types(:one)
  end

  test "visiting the index" do
    visit calculation_types_url
    assert_selector "h1", text: "Calculation Types"
  end

  test "creating a Calculation type" do
    visit calculation_types_url
    click_on "New Calculation Type"

    fill_in "Field Type", with: @calculation_type.field_type_id
    fill_in "Name", with: @calculation_type.name
    click_on "Create Calculation type"

    assert_text "Calculation type was successfully created"
    click_on "Back"
  end

  test "updating a Calculation type" do
    visit calculation_types_url
    click_on "Edit", match: :first

    fill_in "Field Type", with: @calculation_type.field_type_id
    fill_in "Name", with: @calculation_type.name
    click_on "Update Calculation type"

    assert_text "Calculation type was successfully updated"
    click_on "Back"
  end

  test "destroying a Calculation type" do
    visit calculation_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calculation type was successfully destroyed"
  end
end
