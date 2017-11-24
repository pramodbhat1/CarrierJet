require 'test_helper'

class FindjobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @findjob = findjobs(:one)
  end

  test "should get index" do
    get findjobs_url
    assert_response :success
  end

  test "should get new" do
    get new_findjob_url
    assert_response :success
  end

  test "should create findjob" do
    assert_difference('Findjob.count') do
      post findjobs_url, params: { findjob: { exp: @findjob.exp, tec: @findjob.tec } }
    end

    assert_redirected_to findjob_url(Findjob.last)
  end

  test "should show findjob" do
    get findjob_url(@findjob)
    assert_response :success
  end

  test "should get edit" do
    get edit_findjob_url(@findjob)
    assert_response :success
  end

  test "should update findjob" do
    patch findjob_url(@findjob), params: { findjob: { exp: @findjob.exp, tec: @findjob.tec } }
    assert_redirected_to findjob_url(@findjob)
  end

  test "should destroy findjob" do
    assert_difference('Findjob.count', -1) do
      delete findjob_url(@findjob)
    end

    assert_redirected_to findjobs_url
  end
end
