require "test_helper"

class LanguageLookupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @language_lookup = language_lookups(:one)
  end

  test "should get index" do
    get language_lookups_url
    assert_response :success
  end

  test "should get new" do
    get new_language_lookup_url
    assert_response :success
  end

  test "should create language_lookup" do
    assert_difference("LanguageLookup.count") do
      post language_lookups_url, params: { language_lookup: {  } }
    end

    assert_redirected_to language_lookup_url(LanguageLookup.last)
  end

  test "should show language_lookup" do
    get language_lookup_url(@language_lookup)
    assert_response :success
  end

  test "should get edit" do
    get edit_language_lookup_url(@language_lookup)
    assert_response :success
  end

  test "should update language_lookup" do
    patch language_lookup_url(@language_lookup), params: { language_lookup: {  } }
    assert_redirected_to language_lookup_url(@language_lookup)
  end

  test "should destroy language_lookup" do
    assert_difference("LanguageLookup.count", -1) do
      delete language_lookup_url(@language_lookup)
    end

    assert_redirected_to language_lookups_url
  end
end
