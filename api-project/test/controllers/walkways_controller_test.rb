require "test_helper"

class WalkwaysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get walkways_index_url
    assert_response :success
  end
end
