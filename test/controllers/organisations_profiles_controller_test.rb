require 'test_helper'

class OrganisationsProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organisations_profile = organisations_profiles(:one)
  end

  test "should get index" do
    get organisations_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_organisations_profile_url
    assert_response :success
  end

  test "should create organisations_profile" do
    assert_difference('OrganisationsProfile.count') do
      post organisations_profiles_url, params: { organisations_profile: { address_1: @organisations_profile.address_1, address_2: @organisations_profile.address_2, bio: @organisations_profile.bio, contact_name: @organisations_profile.contact_name, organisation_id: @organisations_profile.organisation_id, organisation_name: @organisations_profile.organisation_name, phone_number: @organisations_profile.phone_number, postcode: @organisations_profile.postcode, rating: @organisations_profile.rating, state: @organisations_profile.state, suburb: @organisations_profile.suburb } }
    end

    assert_redirected_to organisations_profile_url(OrganisationsProfile.last)
  end

  test "should show organisations_profile" do
    get organisations_profile_url(@organisations_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_organisations_profile_url(@organisations_profile)
    assert_response :success
  end

  test "should update organisations_profile" do
    patch organisations_profile_url(@organisations_profile), params: { organisations_profile: { address_1: @organisations_profile.address_1, address_2: @organisations_profile.address_2, bio: @organisations_profile.bio, contact_name: @organisations_profile.contact_name, organisation_id: @organisations_profile.organisation_id, organisation_name: @organisations_profile.organisation_name, phone_number: @organisations_profile.phone_number, postcode: @organisations_profile.postcode, rating: @organisations_profile.rating, state: @organisations_profile.state, suburb: @organisations_profile.suburb } }
    assert_redirected_to organisations_profile_url(@organisations_profile)
  end

  test "should destroy organisations_profile" do
    assert_difference('OrganisationsProfile.count', -1) do
      delete organisations_profile_url(@organisations_profile)
    end

    assert_redirected_to organisations_profiles_url
  end
end
