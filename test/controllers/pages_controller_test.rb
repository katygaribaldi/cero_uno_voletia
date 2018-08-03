require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get forbidden" do
    get pages_forbidden_url
    assert_response :success
  end

end
