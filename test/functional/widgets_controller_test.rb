require 'test_helper'

class WidgetsControllerTest < ActionController::TestCase
  setup do
    @widget = widgets(:one)
    sign_in User.create(email: "test@test.com", password: "testtest")
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:widgets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create widget" do
    assert_difference('Widget.count') do
      post :create, widget: { color: "example", description: @widget.description, name: @widget.name, size: @widget.size }
    end

    assert_redirected_to widget_path(assigns(:widget))
  end

  test "should show widget" do
    get :show, id: @widget
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @widget
    assert_response :success
  end

  test "should update widget" do
    put :update, id: @widget, widget: { color: "example", description: @widget.description, name: @widget.name, size: @widget.size }
    assert_redirected_to widget_path(assigns(:widget))
  end

  test "should destroy widget" do
    assert_difference('Widget.count', -1) do
      delete :destroy, id: @widget
    end

    assert_redirected_to widgets_path
  end
end
