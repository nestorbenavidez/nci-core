require "application_system_test_case"

class InsuranceRangesTest < ApplicationSystemTestCase
  setup do
    @insurance_range = insurance_ranges(:one)
  end

  test "visiting the index" do
    visit insurance_ranges_url
    assert_selector "h1", text: "Insurance Ranges"
  end

  test "creating a Insurance range" do
    visit insurance_ranges_url
    click_on "New Insurance Range"

    fill_in "Calculation Type", with: @insurance_range.calculation_type_id
    fill_in "Name", with: @insurance_range.name
    click_on "Create Insurance range"

    assert_text "Insurance range was successfully created"
    click_on "Back"
  end

  test "updating a Insurance range" do
    visit insurance_ranges_url
    click_on "Edit", match: :first

    fill_in "Calculation Type", with: @insurance_range.calculation_type_id
    fill_in "Name", with: @insurance_range.name
    click_on "Update Insurance range"

    assert_text "Insurance range was successfully updated"
    click_on "Back"
  end

  test "destroying a Insurance range" do
    visit insurance_ranges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insurance range was successfully destroyed"
  end
end
