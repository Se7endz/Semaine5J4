require 'test_helper'

class GossipsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get gossips_create_url
    assert_response :success
  end

end
