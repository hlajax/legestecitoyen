require "application_system_test_case"

class CorruptionsTest < ApplicationSystemTestCase
  setup do
    @corruption = corruptions(:one)
  end

  test "visiting the index" do
    visit corruptions_url
    assert_selector "h1", text: "Corruptions"
  end

  test "creating a Corruption" do
    visit corruptions_url
    click_on "New Corruption"

    fill_in "Citoyen", with: @corruption.citoyen_id
    fill_in "Corruption cat", with: @corruption.corruption_cat_id
    fill_in "Date", with: @corruption.date
    fill_in "Description", with: @corruption.description
    fill_in "Image", with: @corruption.image
    fill_in "Slug", with: @corruption.slug
    fill_in "Titre", with: @corruption.titre
    fill_in "Ville", with: @corruption.ville
    click_on "Create Corruption"

    assert_text "Corruption was successfully created"
    click_on "Back"
  end

  test "updating a Corruption" do
    visit corruptions_url
    click_on "Edit", match: :first

    fill_in "Citoyen", with: @corruption.citoyen_id
    fill_in "Corruption cat", with: @corruption.corruption_cat_id
    fill_in "Date", with: @corruption.date
    fill_in "Description", with: @corruption.description
    fill_in "Image", with: @corruption.image
    fill_in "Slug", with: @corruption.slug
    fill_in "Titre", with: @corruption.titre
    fill_in "Ville", with: @corruption.ville
    click_on "Update Corruption"

    assert_text "Corruption was successfully updated"
    click_on "Back"
  end

  test "destroying a Corruption" do
    visit corruptions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Corruption was successfully destroyed"
  end
end
