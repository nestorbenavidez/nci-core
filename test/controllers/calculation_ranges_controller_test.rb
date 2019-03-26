require 'test_helper'

class CalculationRangesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calculation_range = calculation_ranges(:one)
  end

  test "should get index" do
    get calculation_ranges_url
    assert_response :success
  end

  test "should get new" do
    get new_calculation_range_url
    assert_response :success
  end

  test "should create calculation_range" do
    assert_difference('CalculationRange.count') do
      post calculation_ranges_url, params: { calculation_range: { insurance_program: @calculation_range.insurance_program, name: @calculation_range.name, value: @calculation_range.value } }
    end

    assert_redirected_to calculation_range_url(CalculationRange.last)
  end

  test "should show calculation_range" do
    get calculation_range_url(@calculation_range)
    assert_response :success
  end

  test "should get edit" do
    get edit_calculation_range_url(@calculation_range)
    assert_response :success
  end

  test "should update calculation_range" do
    patch calculation_range_url(@calculation_range), params: { calculation_range: { insurance_program: @calculation_range.insurance_program, name: @calculation_range.name, value: @calculation_range.value } }
    assert_redirected_to calculation_range_url(@calculation_range)
  end

  test "should destroy calculation_range" do
    assert_difference('CalculationRange.count', -1) do
      delete calculation_range_url(@calculation_range)
    end

    assert_redirected_to calculation_ranges_url
  end
end
