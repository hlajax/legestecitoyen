require "application_system_test_case"

class CorruptionCatsTest < ApplicationSystemTestCase
  setup do
    @corruption_cat = corruption_cats(:one)
  end

  test "visiting the index" do
    visit corruption_cats_url
    assert_selector "h1", text: "Corruption Cats"
  end

  test "creating a Corruption cat" do
    visit corruption_cats_url
    click_on "New Corruption Cat"

    fill_in "Administrateur", with: @corruption_cat.administrateur_id
    fill_in "Description", with: @corruption_cat.description
    fill_in "Slug", with: @corruption_cat.slug
    fill_in "Titre", with: @corruption_cat.titre
    click_on "Create Corruption cat"

    assert_text "Corruption cat was successfully created"
    click_on "Back"
  end

  test "updating a Corruption cat" do
    visit corruption_cats_url
    click_on "Edit", match: :first

    fill_in "Administrateur", with: @corruption_cat.administrateur_id
    fill_in "Description", with: @corruption_cat.description
    fill_in "Slug", with: @corruption_cat.slug
    fill_in "Titre", with: @corruption_cat.titre
    click_on "Update Corruption cat"

    assert_text "Corruption cat was successfully updated"
    click_on "Back"
  end

  test "destroying a Corruption cat" do
    visit corruption_cats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Corruption cat was successfully destroyed"
  end
end
