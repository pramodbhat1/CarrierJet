require 'test_helper'

class CarrierknowledghesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrierknowledghe = carrierknowledghes(:one)
  end

  test "should get index" do
    get carrierknowledghes_url
    assert_response :success
  end

  test "should get new" do
    get new_carrierknowledghe_url
    assert_response :success
  end

  test "should create carrierknowledghe" do
    assert_difference('Carrierknowledghe.count') do
      post carrierknowledghes_url, params: { carrierknowledghe: {  } }
    end

    assert_redirected_to carrierknowledghe_url(Carrierknowledghe.last)
  end

  test "should show carrierknowledghe" do
    get carrierknowledghe_url(@carrierknowledghe)
    assert_response :success
  end

  test "should get edit" do
    get edit_carrierknowledghe_url(@carrierknowledghe)
    assert_response :success
  end

  test "should update carrierknowledghe" do
    patch carrierknowledghe_url(@carrierknowledghe), params: { carrierknowledghe: {  } }
    assert_redirected_to carrierknowledghe_url(@carrierknowledghe)
  end

  test "should destroy carrierknowledghe" do
    assert_difference('Carrierknowledghe.count', -1) do
      delete carrierknowledghe_url(@carrierknowledghe)
    end

    assert_redirected_to carrierknowledghes_url
  end
end
