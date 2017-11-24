require 'test_helper'

class NewloginpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @newloginpage = newloginpages(:one)
  end

  test "should get index" do
    get newloginpages_url
    assert_response :success
  end

  test "should get new" do
    get new_newloginpage_url
    assert_response :success
  end

  test "should create newloginpage" do
    assert_difference('Newloginpage.count') do
      post newloginpages_url, params: { newloginpage: {  } }
    end

    assert_redirected_to newloginpage_url(Newloginpage.last)
  end

  test "should show newloginpage" do
    get newloginpage_url(@newloginpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_newloginpage_url(@newloginpage)
    assert_response :success
  end

  test "should update newloginpage" do
    patch newloginpage_url(@newloginpage), params: { newloginpage: {  } }
    assert_redirected_to newloginpage_url(@newloginpage)
  end

  test "should destroy newloginpage" do
    assert_difference('Newloginpage.count', -1) do
      delete newloginpage_url(@newloginpage)
    end

    assert_redirected_to newloginpages_url
  end
end
