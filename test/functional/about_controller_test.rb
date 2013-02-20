require 'test_helper'

class AboutControllerTest < ActionController::TestCase
  setup do
    sign_in User.create(email: "test@test.com", password: "testtest")
  end

  test "should get company" do
    get :company
    assert_response :success
  end

end
