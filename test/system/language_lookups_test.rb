require "application_system_test_case"

class LanguageLookupsTest < ApplicationSystemTestCase
  setup do
    @language_lookup = language_lookups(:one)
  end

  test "visiting the index" do
    visit language_lookups_url
    assert_selector "h1", text: "Language lookups"
  end

  test "should create language lookup" do
    visit language_lookups_url
    click_on "New language lookup"

    click_on "Create Language lookup"

    assert_text "Language lookup was successfully created"
    click_on "Back"
  end

  test "should update Language lookup" do
    visit language_lookup_url(@language_lookup)
    click_on "Edit this language lookup", match: :first

    click_on "Update Language lookup"

    assert_text "Language lookup was successfully updated"
    click_on "Back"
  end

  test "should destroy Language lookup" do
    visit language_lookup_url(@language_lookup)
    click_on "Destroy this language lookup", match: :first

    assert_text "Language lookup was successfully destroyed"
  end
end
