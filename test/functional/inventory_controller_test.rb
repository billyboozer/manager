require 'test_helper'

class InventoryControllerTest < ActionController::TestCase
  setup do
    sign_in User.create(email: "test@test.com", password: "testtest")
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
