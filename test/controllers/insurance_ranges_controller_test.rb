require 'test_helper'

class InsuranceRangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insurance_range = insurance_ranges(:one)
  end

  test "should get index" do
    get insurance_ranges_url
    assert_response :success
  end

  test "should get new" do
    get new_insurance_range_url
    assert_response :success
  end

  test "should create insurance_range" do
    assert_difference('InsuranceRange.count') do
      post insurance_ranges_url, params: { insurance_range: { calculation_type_id: @insurance_range.calculation_type_id, name: @insurance_range.name } }
    end

    assert_redirected_to insurance_range_url(InsuranceRange.last)
  end

  test "should show insurance_range" do
    get insurance_range_url(@insurance_range)
    assert_response :success
  end

  test "should get edit" do
    get edit_insurance_range_url(@insurance_range)
    assert_response :success
  end

  test "should update insurance_range" do
    patch insurance_range_url(@insurance_range), params: { insurance_range: { calculation_type_id: @insurance_range.calculation_type_id, name: @insurance_range.name } }
    assert_redirected_to insurance_range_url(@insurance_range)
  end

  test "should destroy insurance_range" do
    assert_difference('InsuranceRange.count', -1) do
      delete insurance_range_url(@insurance_range)
    end

    assert_redirected_to insurance_ranges_url
  end
end
