require 'test_helper'

class RefrigeratorEventControllerTest < ActionDispatch::IntegrationTest
  test "should get add" do
    get refrigerator_event_add_url
    assert_response :success
  end

end
