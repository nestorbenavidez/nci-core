require "application_system_test_case"

class InsuranceProgramsTest < ApplicationSystemTestCase
  setup do
    @insurance_program = insurance_programs(:one)
  end

  test "visiting the index" do
    visit insurance_programs_url
    assert_selector "h1", text: "Insurance Programs"
  end

  test "creating a Insurance program" do
    visit insurance_programs_url
    click_on "New Insurance Program"

    fill_in "Broker fee", with: @insurance_program.broker_fee
    fill_in "Inspection fee", with: @insurance_program.inspection_fee
    fill_in "Name", with: @insurance_program.name
    fill_in "Surplus fee", with: @insurance_program.surplus_fee
    fill_in "Surplus tax", with: @insurance_program.surplus_tax
    click_on "Create Insurance program"

    assert_text "Insurance program was successfully created"
    click_on "Back"
  end

  test "updating a Insurance program" do
    visit insurance_programs_url
    click_on "Edit", match: :first

    fill_in "Broker fee", with: @insurance_program.broker_fee
    fill_in "Inspection fee", with: @insurance_program.inspection_fee
    fill_in "Name", with: @insurance_program.name
    fill_in "Surplus fee", with: @insurance_program.surplus_fee
    fill_in "Surplus tax", with: @insurance_program.surplus_tax
    click_on "Update Insurance program"

    assert_text "Insurance program was successfully updated"
    click_on "Back"
  end

  test "destroying a Insurance program" do
    visit insurance_programs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insurance program was successfully destroyed"
  end
end
