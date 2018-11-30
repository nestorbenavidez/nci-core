require "application_system_test_case"

class LimitsTest < ApplicationSystemTestCase
  setup do
    @limit = limits(:one)
  end

  test "visiting the index" do
    visit limits_url
    assert_selector "h1", text: "Limits"
  end

  test "creating a Limit" do
    visit limits_url
    click_on "New Limit"

    fill_in "Insurance Program", with: @limit.insurance_program_id
    fill_in "Name", with: @limit.name
    click_on "Create Limit"

    assert_text "Limit was successfully created"
    click_on "Back"
  end

  test "updating a Limit" do
    visit limits_url
    click_on "Edit", match: :first

    fill_in "Insurance Program", with: @limit.insurance_program_id
    fill_in "Name", with: @limit.name
    click_on "Update Limit"

    assert_text "Limit was successfully updated"
    click_on "Back"
  end

  test "destroying a Limit" do
    visit limits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Limit was successfully destroyed"
  end
end
