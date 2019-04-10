require "application_system_test_case"

class EventVenuesTest < ApplicationSystemTestCase
  setup do
    @event_venue = event_venues(:one)
  end

  test "visiting the index" do
    visit event_venues_url
    assert_selector "h1", text: "Event Venues"
  end

  test "creating a Event venue" do
    visit event_venues_url
    click_on "New Event Venue"

    fill_in "Address", with: @event_venue.address
    fill_in "Capacity", with: @event_venue.capacity
    fill_in "Name.string", with: @event_venue.name.string
    click_on "Create Event venue"

    assert_text "Event venue was successfully created"
    click_on "Back"
  end

  test "updating a Event venue" do
    visit event_venues_url
    click_on "Edit", match: :first

    fill_in "Address", with: @event_venue.address
    fill_in "Capacity", with: @event_venue.capacity
    fill_in "Name.string", with: @event_venue.name.string
    click_on "Update Event venue"

    assert_text "Event venue was successfully updated"
    click_on "Back"
  end

  test "destroying a Event venue" do
    visit event_venues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event venue was successfully destroyed"
  end
end
