require 'test_helper'

class FirstpagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firstpage = firstpages(:one)
  end

  test "should get index" do
    get firstpages_url
    assert_response :success
  end

  test "should get new" do
    get new_firstpage_url
    assert_response :success
  end

  test "should create firstpage" do
    assert_difference('Firstpage.count') do
      post firstpages_url, params: { firstpage: {  } }
    end

    assert_redirected_to firstpage_url(Firstpage.last)
  end

  test "should show firstpage" do
    get firstpage_url(@firstpage)
    assert_response :success
  end

  test "should get edit" do
    get edit_firstpage_url(@firstpage)
    assert_response :success
  end

  test "should update firstpage" do
    patch firstpage_url(@firstpage), params: { firstpage: {  } }
    assert_redirected_to firstpage_url(@firstpage)
  end

  test "should destroy firstpage" do
    assert_difference('Firstpage.count', -1) do
      delete firstpage_url(@firstpage)
    end

    assert_redirected_to firstpages_url
  end
end
