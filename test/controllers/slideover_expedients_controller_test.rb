require "test_helper"

class SlideoverExpedientsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get slideover_expedients_index_url
    assert_response :success
  end
end
