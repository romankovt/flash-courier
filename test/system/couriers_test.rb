# frozen_string_literal: true

require "application_system_test_case"

class CouriersTest < ApplicationSystemTestCase
  setup do
    @courier = couriers(:one)
  end

  test "visiting the index" do
    visit couriers_url
    assert_selector "h1", text: "Couriers"
  end

  test "should create courier" do
    visit couriers_url
    click_on "New courier"

    fill_in "First name", with: @courier.first_name
    fill_in "Last name", with: @courier.last_name
    fill_in "Phone", with: @courier.phone
    fill_in "Status", with: @courier.status
    click_on "Create Courier"

    assert_text "Courier was successfully created"
    click_on "Back"
  end

  test "should update Courier" do
    visit courier_url(@courier)
    click_on "Edit this courier", match: :first

    fill_in "First name", with: @courier.first_name
    fill_in "Last name", with: @courier.last_name
    fill_in "Phone", with: @courier.phone
    fill_in "Status", with: @courier.status
    click_on "Update Courier"

    assert_text "Courier was successfully updated"
    click_on "Back"
  end

  test "should destroy Courier" do
    visit courier_url(@courier)
    click_on "Destroy this courier", match: :first

    assert_text "Courier was successfully destroyed"
  end
end
