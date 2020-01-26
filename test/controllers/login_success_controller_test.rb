require 'test_helper'

class LoginSuccessControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get login_success_index_url
    assert_response :success
  end

end
