require 'test_helper'

class TicketZonesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get ticket_zones_create_url
    assert_response :success
  end

  test "should get update" do
    get ticket_zones_update_url
    assert_response :success
  end

  test "should get destroy" do
    get ticket_zones_destroy_url
    assert_response :success
  end

end
