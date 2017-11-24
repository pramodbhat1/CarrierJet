require 'test_helper'

class Dummy1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dummy1 = dummy1s(:one)
  end

  test "should get index" do
    get dummy1s_url
    assert_response :success
  end

  test "should get new" do
    get new_dummy1_url
    assert_response :success
  end

  test "should create dummy1" do
    assert_difference('Dummy1.count') do
      post dummy1s_url, params: { dummy1: {  } }
    end

    assert_redirected_to dummy1_url(Dummy1.last)
  end

  test "should show dummy1" do
    get dummy1_url(@dummy1)
    assert_response :success
  end

  test "should get edit" do
    get edit_dummy1_url(@dummy1)
    assert_response :success
  end

  test "should update dummy1" do
    patch dummy1_url(@dummy1), params: { dummy1: {  } }
    assert_redirected_to dummy1_url(@dummy1)
  end

  test "should destroy dummy1" do
    assert_difference('Dummy1.count', -1) do
      delete dummy1_url(@dummy1)
    end

    assert_redirected_to dummy1s_url
  end
end
