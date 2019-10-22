require "application_system_test_case"

class ActualitesTest < ApplicationSystemTestCase
  setup do
    @actualite = actualites(:one)
  end

  test "visiting the index" do
    visit actualites_url
    assert_selector "h1", text: "Actualites"
  end

  test "creating a Actualite" do
    visit actualites_url
    click_on "New Actualite"

    fill_in "Administrateur", with: @actualite.administrateur_id
    fill_in "Category", with: @actualite.category_id
    fill_in "Contenu", with: @actualite.contenu
    fill_in "Image", with: @actualite.image
    fill_in "Titre", with: @actualite.titre
    click_on "Create Actualite"

    assert_text "Actualite was successfully created"
    click_on "Back"
  end

  test "updating a Actualite" do
    visit actualites_url
    click_on "Edit", match: :first

    fill_in "Administrateur", with: @actualite.administrateur_id
    fill_in "Category", with: @actualite.category_id
    fill_in "Contenu", with: @actualite.contenu
    fill_in "Image", with: @actualite.image
    fill_in "Titre", with: @actualite.titre
    click_on "Update Actualite"

    assert_text "Actualite was successfully updated"
    click_on "Back"
  end

  test "destroying a Actualite" do
    visit actualites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Actualite was successfully destroyed"
  end
end
