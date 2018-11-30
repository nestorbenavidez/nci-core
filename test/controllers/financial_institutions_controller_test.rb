require 'test_helper'

class FinancialInstitutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @financial_institution = financial_institutions(:one)
  end

  test "should get index" do
    get financial_institutions_url
    assert_response :success
  end

  test "should get new" do
    get new_financial_institution_url
    assert_response :success
  end

  test "should create financial_institution" do
    assert_difference('FinancialInstitution.count') do
      post financial_institutions_url, params: { financial_institution: { apr: @financial_institution.apr, insurance_program_id: @financial_institution.insurance_program_id, name: @financial_institution.name } }
    end

    assert_redirected_to financial_institution_url(FinancialInstitution.last)
  end

  test "should show financial_institution" do
    get financial_institution_url(@financial_institution)
    assert_response :success
  end

  test "should get edit" do
    get edit_financial_institution_url(@financial_institution)
    assert_response :success
  end

  test "should update financial_institution" do
    patch financial_institution_url(@financial_institution), params: { financial_institution: { apr: @financial_institution.apr, insurance_program_id: @financial_institution.insurance_program_id, name: @financial_institution.name } }
    assert_redirected_to financial_institution_url(@financial_institution)
  end

  test "should destroy financial_institution" do
    assert_difference('FinancialInstitution.count', -1) do
      delete financial_institution_url(@financial_institution)
    end

    assert_redirected_to financial_institutions_url
  end
end
