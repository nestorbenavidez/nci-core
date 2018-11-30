require "application_system_test_case"

class FieldTypesTest < ApplicationSystemTestCase
  setup do
    @field_type = field_types(:one)
  end

  test "visiting the index" do
    visit field_types_url
    assert_selector "h1", text: "Field Types"
  end

  test "creating a Field type" do
    visit field_types_url
    click_on "New Field Type"

    fill_in "Insurance Program", with: @field_type.insurance_program_id
    fill_in "Name", with: @field_type.name
    click_on "Create Field type"

    assert_text "Field type was successfully created"
    click_on "Back"
  end

  test "updating a Field type" do
    visit field_types_url
    click_on "Edit", match: :first

    fill_in "Insurance Program", with: @field_type.insurance_program_id
    fill_in "Name", with: @field_type.name
    click_on "Update Field type"

    assert_text "Field type was successfully updated"
    click_on "Back"
  end

  test "destroying a Field type" do
    visit field_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Field type was successfully destroyed"
  end
end
