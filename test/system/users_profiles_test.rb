require "application_system_test_case"

class UsersProfilesTest < ApplicationSystemTestCase
  setup do
    @users_profile = users_profiles(:one)
  end

  test "visiting the index" do
    visit users_profiles_url
    assert_selector "h1", text: "Users Profiles"
  end

  test "creating a Users profile" do
    visit users_profiles_url
    click_on "New Users Profile"

    fill_in "Address 1", with: @users_profile.address_1
    fill_in "Address 2", with: @users_profile.address_2
    fill_in "First name", with: @users_profile.first_name
    fill_in "Last name", with: @users_profile.last_name
    fill_in "Phone number", with: @users_profile.phone_number
    fill_in "Postcode", with: @users_profile.postcode
    fill_in "State", with: @users_profile.state
    fill_in "Suburb", with: @users_profile.suburb
    fill_in "User", with: @users_profile.user_id
    click_on "Create Users profile"

    assert_text "Users profile was successfully created"
    click_on "Back"
  end

  test "updating a Users profile" do
    visit users_profiles_url
    click_on "Edit", match: :first

    fill_in "Address 1", with: @users_profile.address_1
    fill_in "Address 2", with: @users_profile.address_2
    fill_in "First name", with: @users_profile.first_name
    fill_in "Last name", with: @users_profile.last_name
    fill_in "Phone number", with: @users_profile.phone_number
    fill_in "Postcode", with: @users_profile.postcode
    fill_in "State", with: @users_profile.state
    fill_in "Suburb", with: @users_profile.suburb
    fill_in "User", with: @users_profile.user_id
    click_on "Update Users profile"

    assert_text "Users profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Users profile" do
    visit users_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Users profile was successfully destroyed"
  end
end
