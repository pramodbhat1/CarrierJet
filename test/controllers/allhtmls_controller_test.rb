require 'test_helper'

class AllhtmlsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @allhtml = allhtmls(:one)
  end

  test "should get index" do
    get allhtmls_url
    assert_response :success
  end

  test "should get new" do
    get new_allhtml_url
    assert_response :success
  end

  test "should create allhtml" do
    assert_difference('Allhtml.count') do
      post allhtmls_url, params: { allhtml: {  } }
    end

    assert_redirected_to allhtml_url(Allhtml.last)
  end

  test "should show allhtml" do
    get allhtml_url(@allhtml)
    assert_response :success
  end

  test "should get edit" do
    get edit_allhtml_url(@allhtml)
    assert_response :success
  end

  test "should update allhtml" do
    patch allhtml_url(@allhtml), params: { allhtml: {  } }
    assert_redirected_to allhtml_url(@allhtml)
  end

  test "should destroy allhtml" do
    assert_difference('Allhtml.count', -1) do
      delete allhtml_url(@allhtml)
    end

    assert_redirected_to allhtmls_url
  end
end
