require "test_helper"

class PostControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get post_top_url
    assert_response :success
  end
end
