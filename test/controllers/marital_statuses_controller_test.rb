require 'test_helper'

class MaritalStatusesControllerTest < ActionController::TestCase
  setup do
    @marital_status = marital_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marital_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marital_status" do
    assert_difference('MaritalStatus.count') do
      post :create, marital_status: { description: @marital_status.description, name: @marital_status.name }
    end

    assert_redirected_to marital_status_path(assigns(:marital_status))
  end

  test "should show marital_status" do
    get :show, id: @marital_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marital_status
    assert_response :success
  end

  test "should update marital_status" do
    patch :update, id: @marital_status, marital_status: { description: @marital_status.description, name: @marital_status.name }
    assert_redirected_to marital_status_path(assigns(:marital_status))
  end

  test "should destroy marital_status" do
    assert_difference('MaritalStatus.count', -1) do
      delete :destroy, id: @marital_status
    end

    assert_redirected_to marital_statuses_path
  end
end
