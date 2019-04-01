require "application_system_test_case"

class FinancialInstitutionsTest < ApplicationSystemTestCase
  setup do
    @financial_institution = financial_institutions(:one)
  end

  test "visiting the index" do
    visit financial_institutions_url
    assert_selector "h1", text: "Financial Institutions"
  end

  test "creating a Financial institution" do
    visit financial_institutions_url
    click_on "New Financial Institution"

    fill_in "Apr", with: @financial_institution.apr
    fill_in "Name", with: @financial_institution.name
    click_on "Create Financial institution"

    assert_text "Financial institution was successfully created"
    click_on "Back"
  end

  test "updating a Financial institution" do
    visit financial_institutions_url
    click_on "Edit", match: :first

    fill_in "Apr", with: @financial_institution.apr
    fill_in "Name", with: @financial_institution.name
    click_on "Update Financial institution"

    assert_text "Financial institution was successfully updated"
    click_on "Back"
  end

  test "destroying a Financial institution" do
    visit financial_institutions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Financial institution was successfully destroyed"
  end
end
