require 'test_helper'

class LatestnewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @latestnews = latestnews(:one)
  end

  test "should get index" do
    get latestnews_index_url
    assert_response :success
  end

  test "should get new" do
    get new_latestnews_url
    assert_response :success
  end

  test "should create latestnews" do
    assert_difference('Latestnews.count') do
      post latestnews_index_url, params: { latestnews: { description: @latestnews.description, image: @latestnews.image, title: @latestnews.title } }
    end

    assert_redirected_to latestnews_url(Latestnews.last)
  end

  test "should show latestnews" do
    get latestnews_url(@latestnews)
    assert_response :success
  end

  test "should get edit" do
    get edit_latestnews_url(@latestnews)
    assert_response :success
  end

  test "should update latestnews" do
    patch latestnews_url(@latestnews), params: { latestnews: { description: @latestnews.description, image: @latestnews.image, title: @latestnews.title } }
    assert_redirected_to latestnews_url(@latestnews)
  end

  test "should destroy latestnews" do
    assert_difference('Latestnews.count', -1) do
      delete latestnews_url(@latestnews)
    end

    assert_redirected_to latestnews_index_url
  end
end
