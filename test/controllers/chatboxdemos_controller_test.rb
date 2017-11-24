require 'test_helper'

class ChatboxdemosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chatboxdemo = chatboxdemos(:one)
  end

  test "should get index" do
    get chatboxdemos_url
    assert_response :success
  end

  test "should get new" do
    get new_chatboxdemo_url
    assert_response :success
  end

  test "should create chatboxdemo" do
    assert_difference('Chatboxdemo.count') do
      post chatboxdemos_url, params: { chatboxdemo: {  } }
    end

    assert_redirected_to chatboxdemo_url(Chatboxdemo.last)
  end

  test "should show chatboxdemo" do
    get chatboxdemo_url(@chatboxdemo)
    assert_response :success
  end

  test "should get edit" do
    get edit_chatboxdemo_url(@chatboxdemo)
    assert_response :success
  end

  test "should update chatboxdemo" do
    patch chatboxdemo_url(@chatboxdemo), params: { chatboxdemo: {  } }
    assert_redirected_to chatboxdemo_url(@chatboxdemo)
  end

  test "should destroy chatboxdemo" do
    assert_difference('Chatboxdemo.count', -1) do
      delete chatboxdemo_url(@chatboxdemo)
    end

    assert_redirected_to chatboxdemos_url
  end
end
