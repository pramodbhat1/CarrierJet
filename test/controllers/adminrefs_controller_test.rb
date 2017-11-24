require 'test_helper'

class AdminrefsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adminref = adminrefs(:one)
  end

  test "should get index" do
    get adminrefs_url
    assert_response :success
  end

  test "should get new" do
    get new_adminref_url
    assert_response :success
  end

  test "should create adminref" do
    assert_difference('Adminref.count') do
      post adminrefs_url, params: { adminref: { Experince_in_year: @adminref.Experince_in_year, Location: @adminref.Location, company: @adminref.company, name: @adminref.name, referealid: @adminref.referealid, technology: @adminref.technology } }
    end

    assert_redirected_to adminref_url(Adminref.last)
  end

  test "should show adminref" do
    get adminref_url(@adminref)
    assert_response :success
  end

  test "should get edit" do
    get edit_adminref_url(@adminref)
    assert_response :success
  end

  test "should update adminref" do
    patch adminref_url(@adminref), params: { adminref: { Experince_in_year: @adminref.Experince_in_year, Location: @adminref.Location, company: @adminref.company, name: @adminref.name, referealid: @adminref.referealid, technology: @adminref.technology } }
    assert_redirected_to adminref_url(@adminref)
  end

  test "should destroy adminref" do
    assert_difference('Adminref.count', -1) do
      delete adminref_url(@adminref)
    end

    assert_redirected_to adminrefs_url
  end
end
