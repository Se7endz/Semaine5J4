require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get static_pages_contact_url
    assert_response :success
  end

  test "should get team" do
    get static_pages_team_url
    assert_response :success
  end

  test "should get landing" do
    get static_pages_landing_url
    assert_response :success
  end

  test "should get authors" do
    get static_pages_authors_url
    assert_response :success
  end

end
