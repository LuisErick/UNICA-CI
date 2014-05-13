require 'test_helper'

class PostgradeTypesControllerTest < ActionController::TestCase
  setup do
    @postgrade_type = postgrade_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postgrade_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postgrade_type" do
    assert_difference('PostgradeType.count') do
      post :create, postgrade_type: { description: @postgrade_type.description, name: @postgrade_type.name }
    end

    assert_redirected_to postgrade_type_path(assigns(:postgrade_type))
  end

  test "should show postgrade_type" do
    get :show, id: @postgrade_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postgrade_type
    assert_response :success
  end

  test "should update postgrade_type" do
    patch :update, id: @postgrade_type, postgrade_type: { description: @postgrade_type.description, name: @postgrade_type.name }
    assert_redirected_to postgrade_type_path(assigns(:postgrade_type))
  end

  test "should destroy postgrade_type" do
    assert_difference('PostgradeType.count', -1) do
      delete :destroy, id: @postgrade_type
    end

    assert_redirected_to postgrade_types_path
  end
end
