require 'test_helper'

class ListingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get listings_url
    assert_response :success
  end

  test "should get new" do
    get new_listing_url
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post listings_url, params: { listing: { age: @listing.age, animal_type: @listing.animal_type, breed: @listing.breed, description: @listing.description, desexed_status: @listing.desexed_status, email: @listing.email, expected_size: @listing.expected_size, health_status: @listing.health_status, location: @listing.location, microchip_number: @listing.microchip_number, name: @listing.name, organisations_profile_id: @listing.organisations_profile_id, phone_number: @listing.phone_number, price: @listing.price, sex: @listing.sex, users_profile_id: @listing.users_profile_id, vaccination_details: @listing.vaccination_details, vaccination_status: @listing.vaccination_status } }
    end

    assert_redirected_to listing_url(Listing.last)
  end

  test "should show listing" do
    get listing_url(@listing)
    assert_response :success
  end

  test "should get edit" do
    get edit_listing_url(@listing)
    assert_response :success
  end

  test "should update listing" do
    patch listing_url(@listing), params: { listing: { age: @listing.age, animal_type: @listing.animal_type, breed: @listing.breed, description: @listing.description, desexed_status: @listing.desexed_status, email: @listing.email, expected_size: @listing.expected_size, health_status: @listing.health_status, location: @listing.location, microchip_number: @listing.microchip_number, name: @listing.name, organisations_profile_id: @listing.organisations_profile_id, phone_number: @listing.phone_number, price: @listing.price, sex: @listing.sex, users_profile_id: @listing.users_profile_id, vaccination_details: @listing.vaccination_details, vaccination_status: @listing.vaccination_status } }
    assert_redirected_to listing_url(@listing)
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete listing_url(@listing)
    end

    assert_redirected_to listings_url
  end
end
