require 'test_helper'

class RentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental = rentals(:one)
  end

  test "should get index" do
    get rentals_url
    assert_response :success
  end

  test "should get new" do
    get new_rental_url
    assert_response :success
  end

  test "should create rental" do
    assert_difference('Rental.count') do
      post rentals_url, params: { rental: { address: @rental.address, agent: @rental.agent, baths: @rental.baths, beds: @rental.beds, floor_level: @rental.floor_level, funishing: @rental.funishing, listingID: @rental.listingID, name: @rental.name, price: @rental.price, psf: @rental.psf, size: @rental.size, tenure: @rental.tenure, type: @rental.type } }
    end

    assert_redirected_to rental_url(Rental.last)
  end

  test "should show rental" do
    get rental_url(@rental)
    assert_response :success
  end

  test "should get edit" do
    get edit_rental_url(@rental)
    assert_response :success
  end

  test "should update rental" do
    patch rental_url(@rental), params: { rental: { address: @rental.address, agent: @rental.agent, baths: @rental.baths, beds: @rental.beds, floor_level: @rental.floor_level, funishing: @rental.funishing, listingID: @rental.listingID, name: @rental.name, price: @rental.price, psf: @rental.psf, size: @rental.size, tenure: @rental.tenure, type: @rental.type } }
    assert_redirected_to rental_url(@rental)
  end

  test "should destroy rental" do
    assert_difference('Rental.count', -1) do
      delete rental_url(@rental)
    end

    assert_redirected_to rentals_url
  end
end
