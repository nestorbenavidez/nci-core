require 'test_helper'

class CalculationTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calculation_type = calculation_types(:one)
  end

  test "should get index" do
    get calculation_types_url
    assert_response :success
  end

  test "should get new" do
    get new_calculation_type_url
    assert_response :success
  end

  test "should create calculation_type" do
    assert_difference('CalculationType.count') do
      post calculation_types_url, params: { calculation_type: { field_type_id: @calculation_type.field_type_id, name: @calculation_type.name } }
    end

    assert_redirected_to calculation_type_url(CalculationType.last)
  end

  test "should show calculation_type" do
    get calculation_type_url(@calculation_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_calculation_type_url(@calculation_type)
    assert_response :success
  end

  test "should update calculation_type" do
    patch calculation_type_url(@calculation_type), params: { calculation_type: { field_type_id: @calculation_type.field_type_id, name: @calculation_type.name } }
    assert_redirected_to calculation_type_url(@calculation_type)
  end

  test "should destroy calculation_type" do
    assert_difference('CalculationType.count', -1) do
      delete calculation_type_url(@calculation_type)
    end

    assert_redirected_to calculation_types_url
  end
end
