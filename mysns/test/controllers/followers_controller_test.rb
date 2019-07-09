require 'test_helper'

class FollowersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get followers_new_url
    assert_response :success
  end

end
