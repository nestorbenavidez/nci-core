require 'test_helper'

class LimitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @limit = limits(:one)
  end

  test "should get index" do
    get limits_url
    assert_response :success
  end

  test "should get new" do
    get new_limit_url
    assert_response :success
  end

  test "should create limit" do
    assert_difference('Limit.count') do
      post limits_url, params: { limit: { insurance_program_id: @limit.insurance_program_id, name: @limit.name } }
    end

    assert_redirected_to limit_url(Limit.last)
  end

  test "should show limit" do
    get limit_url(@limit)
    assert_response :success
  end

  test "should get edit" do
    get edit_limit_url(@limit)
    assert_response :success
  end

  test "should update limit" do
    patch limit_url(@limit), params: { limit: { insurance_program_id: @limit.insurance_program_id, name: @limit.name } }
    assert_redirected_to limit_url(@limit)
  end

  test "should destroy limit" do
    assert_difference('Limit.count', -1) do
      delete limit_url(@limit)
    end

    assert_redirected_to limits_url
  end
end
