require "application_system_test_case"

class PetitionCatsTest < ApplicationSystemTestCase
  setup do
    @petition_cat = petition_cats(:one)
  end

  test "visiting the index" do
    visit petition_cats_url
    assert_selector "h1", text: "Petition Cats"
  end

  test "creating a Petition cat" do
    visit petition_cats_url
    click_on "New Petition Cat"

    fill_in "Description", with: @petition_cat.description
    fill_in "Slug", with: @petition_cat.slug
    fill_in "Titre", with: @petition_cat.titre
    click_on "Create Petition cat"

    assert_text "Petition cat was successfully created"
    click_on "Back"
  end

  test "updating a Petition cat" do
    visit petition_cats_url
    click_on "Edit", match: :first

    fill_in "Description", with: @petition_cat.description
    fill_in "Slug", with: @petition_cat.slug
    fill_in "Titre", with: @petition_cat.titre
    click_on "Update Petition cat"

    assert_text "Petition cat was successfully updated"
    click_on "Back"
  end

  test "destroying a Petition cat" do
    visit petition_cats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Petition cat was successfully destroyed"
  end
end
