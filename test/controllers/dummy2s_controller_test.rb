require 'test_helper'

class Dummy2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dummy2 = dummy2s(:one)
  end

  test "should get index" do
    get dummy2s_url
    assert_response :success
  end

  test "should get new" do
    get new_dummy2_url
    assert_response :success
  end

  test "should create dummy2" do
    assert_difference('Dummy2.count') do
      post dummy2s_url, params: { dummy2: {  } }
    end

    assert_redirected_to dummy2_url(Dummy2.last)
  end

  test "should show dummy2" do
    get dummy2_url(@dummy2)
    assert_response :success
  end

  test "should get edit" do
    get edit_dummy2_url(@dummy2)
    assert_response :success
  end

  test "should update dummy2" do
    patch dummy2_url(@dummy2), params: { dummy2: {  } }
    assert_redirected_to dummy2_url(@dummy2)
  end

  test "should destroy dummy2" do
    assert_difference('Dummy2.count', -1) do
      delete dummy2_url(@dummy2)
    end

    assert_redirected_to dummy2s_url
  end
end
