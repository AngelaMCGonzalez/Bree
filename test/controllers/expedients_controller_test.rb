require "test_helper"

class ExpedientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get expedients_index_url
    assert_response :success
  end
end
