require "application_system_test_case"

class ListingsTest < ApplicationSystemTestCase
  setup do
    @listing = listings(:one)
  end

  test "visiting the index" do
    visit listings_url
    assert_selector "h1", text: "Listings"
  end

  test "creating a Listing" do
    visit listings_url
    click_on "New Listing"

    fill_in "Age", with: @listing.age
    fill_in "Animal type", with: @listing.animal_type
    fill_in "Breed", with: @listing.breed
    fill_in "Description", with: @listing.description
    fill_in "Desexed status", with: @listing.desexed_status
    fill_in "Email", with: @listing.email
    fill_in "Expected size", with: @listing.expected_size
    fill_in "Health status", with: @listing.health_status
    fill_in "Location", with: @listing.location
    fill_in "Microchip number", with: @listing.microchip_number
    fill_in "Name", with: @listing.name
    fill_in "Organisations profile", with: @listing.organisations_profile_id
    fill_in "Phone number", with: @listing.phone_number
    fill_in "Price", with: @listing.price
    fill_in "Sex", with: @listing.sex
    fill_in "Users profile", with: @listing.users_profile_id
    fill_in "Vaccination details", with: @listing.vaccination_details
    fill_in "Vaccination status", with: @listing.vaccination_status
    click_on "Create Listing"

    assert_text "Listing was successfully created"
    click_on "Back"
  end

  test "updating a Listing" do
    visit listings_url
    click_on "Edit", match: :first

    fill_in "Age", with: @listing.age
    fill_in "Animal type", with: @listing.animal_type
    fill_in "Breed", with: @listing.breed
    fill_in "Description", with: @listing.description
    fill_in "Desexed status", with: @listing.desexed_status
    fill_in "Email", with: @listing.email
    fill_in "Expected size", with: @listing.expected_size
    fill_in "Health status", with: @listing.health_status
    fill_in "Location", with: @listing.location
    fill_in "Microchip number", with: @listing.microchip_number
    fill_in "Name", with: @listing.name
    fill_in "Organisations profile", with: @listing.organisations_profile_id
    fill_in "Phone number", with: @listing.phone_number
    fill_in "Price", with: @listing.price
    fill_in "Sex", with: @listing.sex
    fill_in "Users profile", with: @listing.users_profile_id
    fill_in "Vaccination details", with: @listing.vaccination_details
    fill_in "Vaccination status", with: @listing.vaccination_status
    click_on "Update Listing"

    assert_text "Listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Listing" do
    visit listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listing was successfully destroyed"
  end
end
