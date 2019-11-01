require "application_system_test_case"

class MagazinesTest < ApplicationSystemTestCase
  setup do
    @magazine = magazines(:one)
  end

  test "visiting the index" do
    visit magazines_url
    assert_selector "h1", text: "Magazines"
  end

  test "creating a Magazine" do
    visit magazines_url
    click_on "New Magazine"

    fill_in "Administrateur", with: @magazine.administrateur_id
    fill_in "Cover", with: @magazine.cover
    fill_in "Description", with: @magazine.description
    fill_in "Lien", with: @magazine.lien
    fill_in "Titre", with: @magazine.titre
    click_on "Create Magazine"

    assert_text "Magazine was successfully created"
    click_on "Back"
  end

  test "updating a Magazine" do
    visit magazines_url
    click_on "Edit", match: :first

    fill_in "Administrateur", with: @magazine.administrateur_id
    fill_in "Cover", with: @magazine.cover
    fill_in "Description", with: @magazine.description
    fill_in "Lien", with: @magazine.lien
    fill_in "Titre", with: @magazine.titre
    click_on "Update Magazine"

    assert_text "Magazine was successfully updated"
    click_on "Back"
  end

  test "destroying a Magazine" do
    visit magazines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Magazine was successfully destroyed"
  end
end