require 'test_helper'

class SuggestionboxesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suggestionbox = suggestionboxes(:one)
  end

  test "should get index" do
    get suggestionboxes_url
    assert_response :success
  end

  test "should get new" do
    get new_suggestionbox_url
    assert_response :success
  end

  test "should create suggestionbox" do
    assert_difference('Suggestionbox.count') do
      post suggestionboxes_url, params: { suggestionbox: { bestcombination: @suggestionbox.bestcombination, langvage: @suggestionbox.langvage } }
    end

    assert_redirected_to suggestionbox_url(Suggestionbox.last)
  end

  test "should show suggestionbox" do
    get suggestionbox_url(@suggestionbox)
    assert_response :success
  end

  test "should get edit" do
    get edit_suggestionbox_url(@suggestionbox)
    assert_response :success
  end

  test "should update suggestionbox" do
    patch suggestionbox_url(@suggestionbox), params: { suggestionbox: { bestcombination: @suggestionbox.bestcombination, langvage: @suggestionbox.langvage } }
    assert_redirected_to suggestionbox_url(@suggestionbox)
  end

  test "should destroy suggestionbox" do
    assert_difference('Suggestionbox.count', -1) do
      delete suggestionbox_url(@suggestionbox)
    end

    assert_redirected_to suggestionboxes_url
  end
end
