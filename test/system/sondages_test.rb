require "application_system_test_case"

class SondagesTest < ApplicationSystemTestCase
  setup do
    @sondage = sondages(:one)
  end

  test "visiting the index" do
    visit sondages_url
    assert_selector "h1", text: "Sondages"
  end

  test "creating a Sondage" do
    visit sondages_url
    click_on "New Sondage"

    fill_in "Administrateur", with: @sondage.administrateur_id
    fill_in "Description", with: @sondage.description
    fill_in "Image", with: @sondage.image
    fill_in "Slug", with: @sondage.slug
    fill_in "Titre", with: @sondage.titre
    click_on "Create Sondage"

    assert_text "Sondage was successfully created"
    click_on "Back"
  end

  test "updating a Sondage" do
    visit sondages_url
    click_on "Edit", match: :first

    fill_in "Administrateur", with: @sondage.administrateur_id
    fill_in "Description", with: @sondage.description
    fill_in "Image", with: @sondage.image
    fill_in "Slug", with: @sondage.slug
    fill_in "Titre", with: @sondage.titre
    click_on "Update Sondage"

    assert_text "Sondage was successfully updated"
    click_on "Back"
  end

  test "destroying a Sondage" do
    visit sondages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sondage was successfully destroyed"
  end
end
