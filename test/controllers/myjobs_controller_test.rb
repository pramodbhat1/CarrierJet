require 'test_helper'

class MyjobsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @myjob = myjobs(:one)
  end

  test "should get index" do
    get myjobs_url
    assert_response :success
  end

  test "should get new" do
    get new_myjob_url
    assert_response :success
  end

  test "should create myjob" do
    assert_difference('Myjob.count') do
      post myjobs_url, params: { myjob: { Location: @myjob.Location, company: @myjob.company, experince: @myjob.experince, pakage: @myjob.pakage, technology: @myjob.technology } }
    end

    assert_redirected_to myjob_url(Myjob.last)
  end

  test "should show myjob" do
    get myjob_url(@myjob)
    assert_response :success
  end

  test "should get edit" do
    get edit_myjob_url(@myjob)
    assert_response :success
  end

  test "should update myjob" do
    patch myjob_url(@myjob), params: { myjob: { Location: @myjob.Location, company: @myjob.company, experince: @myjob.experince, pakage: @myjob.pakage, technology: @myjob.technology } }
    assert_redirected_to myjob_url(@myjob)
  end

  test "should destroy myjob" do
    assert_difference('Myjob.count', -1) do
      delete myjob_url(@myjob)
    end

    assert_redirected_to myjobs_url
  end
end
