require 'test_helper'

class InsuranceProgramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insurance_program = insurance_programs(:one)
  end

  test "should get index" do
    get insurance_programs_url
    assert_response :success
  end

  test "should get new" do
    get new_insurance_program_url
    assert_response :success
  end

  test "should create insurance_program" do
    assert_difference('InsuranceProgram.count') do
      post insurance_programs_url, params: { insurance_program: { broder_fee: @insurance_program.broder_fee, inspection_fee: @insurance_program.inspection_fee, surplus_tax: @insurance_program.surplus_tax, us_state_id: @insurance_program.us_state_id } }
    end

    assert_redirected_to insurance_program_url(InsuranceProgram.last)
  end

  test "should show insurance_program" do
    get insurance_program_url(@insurance_program)
    assert_response :success
  end

  test "should get edit" do
    get edit_insurance_program_url(@insurance_program)
    assert_response :success
  end

  test "should update insurance_program" do
    patch insurance_program_url(@insurance_program), params: { insurance_program: { broder_fee: @insurance_program.broder_fee, inspection_fee: @insurance_program.inspection_fee, surplus_tax: @insurance_program.surplus_tax, us_state_id: @insurance_program.us_state_id } }
    assert_redirected_to insurance_program_url(@insurance_program)
  end

  test "should destroy insurance_program" do
    assert_difference('InsuranceProgram.count', -1) do
      delete insurance_program_url(@insurance_program)
    end

    assert_redirected_to insurance_programs_url
  end
end
