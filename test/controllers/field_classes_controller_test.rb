require 'test_helper'

class FieldClassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @field_class = field_classes(:one)
  end

  test "should get index" do
    get field_classes_url
    assert_response :success
  end

  test "should get new" do
    get new_field_class_url
    assert_response :success
  end

  test "should create field_class" do
    assert_difference('FieldClass.count') do
      post field_classes_url, params: { field_class: { insurance_program: @field_class.insurance_program, name: @field_class.name } }
    end

    assert_redirected_to field_class_url(FieldClass.last)
  end

  test "should show field_class" do
    get field_class_url(@field_class)
    assert_response :success
  end

  test "should get edit" do
    get edit_field_class_url(@field_class)
    assert_response :success
  end

  test "should update field_class" do
    patch field_class_url(@field_class), params: { field_class: { insurance_program: @field_class.insurance_program, name: @field_class.name } }
    assert_redirected_to field_class_url(@field_class)
  end

  test "should destroy field_class" do
    assert_difference('FieldClass.count', -1) do
      delete field_class_url(@field_class)
    end

    assert_redirected_to field_classes_url
  end
end
