require "application_system_test_case"

class SpeciesTest < ApplicationSystemTestCase
  setup do
    @species = species(:one)
  end

  test "visiting the index" do
    visit species_url
    assert_selector "h1", text: "Species"
  end

  test "creating a Species" do
    visit species_url
    click_on "New Species"

    fill_in "Common name", with: @species.common_name
    fill_in "Cultivar", with: @species.cultivar
    fill_in "Description", with: @species.description
    fill_in "Genus", with: @species.genus
    check "Hybrid" if @species.hybrid
    fill_in "Species", with: @species.species
    fill_in "Wiki", with: @species.wiki
    click_on "Create Species"

    assert_text "Species was successfully created"
    click_on "Back"
  end

  test "updating a Species" do
    visit species_url
    click_on "Edit", match: :first

    fill_in "Common name", with: @species.common_name
    fill_in "Cultivar", with: @species.cultivar
    fill_in "Description", with: @species.description
    fill_in "Genus", with: @species.genus
    check "Hybrid" if @species.hybrid
    fill_in "Species", with: @species.species
    fill_in "Wiki", with: @species.wiki
    click_on "Update Species"

    assert_text "Species was successfully updated"
    click_on "Back"
  end

  test "destroying a Species" do
    visit species_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Species was successfully destroyed"
  end
end
