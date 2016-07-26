require 'test_helper'

class FooControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get foo_show_url
    assert_response :success
  end

end
