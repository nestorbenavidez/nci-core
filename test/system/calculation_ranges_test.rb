require "application_system_test_case"

class CalculationRangesTest < ApplicationSystemTestCase
  setup do
    @calculation_range = calculation_ranges(:one)
  end

  test "visiting the index" do
    visit calculation_ranges_url
    assert_selector "h1", text: "Calculation Ranges"
  end

  test "creating a Calculation range" do
    visit calculation_ranges_url
    click_on "New Calculation Range"

    fill_in "Insurance program", with: @calculation_range.insurance_program
    fill_in "Name", with: @calculation_range.name
    fill_in "Value", with: @calculation_range.value
    click_on "Create Calculation range"

    assert_text "Calculation range was successfully created"
    click_on "Back"
  end

  test "updating a Calculation range" do
    visit calculation_ranges_url
    click_on "Edit", match: :first

    fill_in "Insurance program", with: @calculation_range.insurance_program
    fill_in "Name", with: @calculation_range.name
    fill_in "Value", with: @calculation_range.value
    click_on "Update Calculation range"

    assert_text "Calculation range was successfully updated"
    click_on "Back"
  end

  test "destroying a Calculation range" do
    visit calculation_ranges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calculation range was successfully destroyed"
  end
end
