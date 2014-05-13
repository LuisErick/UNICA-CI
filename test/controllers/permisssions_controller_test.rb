require 'test_helper'

class PermisssionsControllerTest < ActionController::TestCase
  setup do
    @permisssion = permisssions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:permisssions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create permisssion" do
    assert_difference('Permisssion.count') do
      post :create, permisssion: { description: @permisssion.description, name: @permisssion.name }
    end

    assert_redirected_to permisssion_path(assigns(:permisssion))
  end

  test "should show permisssion" do
    get :show, id: @permisssion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @permisssion
    assert_response :success
  end

  test "should update permisssion" do
    patch :update, id: @permisssion, permisssion: { description: @permisssion.description, name: @permisssion.name }
    assert_redirected_to permisssion_path(assigns(:permisssion))
  end

  test "should destroy permisssion" do
    assert_difference('Permisssion.count', -1) do
      delete :destroy, id: @permisssion
    end

    assert_redirected_to permisssions_path
  end
end
