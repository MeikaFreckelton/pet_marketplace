require "application_system_test_case"

class OrganisationsProfilesTest < ApplicationSystemTestCase
  setup do
    @organisations_profile = organisations_profiles(:one)
  end

  test "visiting the index" do
    visit organisations_profiles_url
    assert_selector "h1", text: "Organisations Profiles"
  end

  test "creating a Organisations profile" do
    visit organisations_profiles_url
    click_on "New Organisations Profile"

    fill_in "Address 1", with: @organisations_profile.address_1
    fill_in "Address 2", with: @organisations_profile.address_2
    fill_in "Bio", with: @organisations_profile.bio
    fill_in "Contact name", with: @organisations_profile.contact_name
    fill_in "Organisation", with: @organisations_profile.organisation_id
    fill_in "Organisation name", with: @organisations_profile.organisation_name
    fill_in "Phone number", with: @organisations_profile.phone_number
    fill_in "Postcode", with: @organisations_profile.postcode
    fill_in "Rating", with: @organisations_profile.rating
    fill_in "State", with: @organisations_profile.state
    fill_in "Suburb", with: @organisations_profile.suburb
    click_on "Create Organisations profile"

    assert_text "Organisations profile was successfully created"
    click_on "Back"
  end

  test "updating a Organisations profile" do
    visit organisations_profiles_url
    click_on "Edit", match: :first

    fill_in "Address 1", with: @organisations_profile.address_1
    fill_in "Address 2", with: @organisations_profile.address_2
    fill_in "Bio", with: @organisations_profile.bio
    fill_in "Contact name", with: @organisations_profile.contact_name
    fill_in "Organisation", with: @organisations_profile.organisation_id
    fill_in "Organisation name", with: @organisations_profile.organisation_name
    fill_in "Phone number", with: @organisations_profile.phone_number
    fill_in "Postcode", with: @organisations_profile.postcode
    fill_in "Rating", with: @organisations_profile.rating
    fill_in "State", with: @organisations_profile.state
    fill_in "Suburb", with: @organisations_profile.suburb
    click_on "Update Organisations profile"

    assert_text "Organisations profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Organisations profile" do
    visit organisations_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organisations profile was successfully destroyed"
  end
end
