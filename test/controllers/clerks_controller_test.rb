require 'test_helper'

class ClerksControllerTest < ActionController::TestCase
  setup do
    @clerk = clerks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clerks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clerk" do
    assert_difference('Clerk.count') do
      post :create, clerk: { person_id: @clerk.person_id, start_date: @clerk.start_date }
    end

    assert_redirected_to clerk_path(assigns(:clerk))
  end

  test "should show clerk" do
    get :show, id: @clerk
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clerk
    assert_response :success
  end

  test "should update clerk" do
    patch :update, id: @clerk, clerk: { person_id: @clerk.person_id, start_date: @clerk.start_date }
    assert_redirected_to clerk_path(assigns(:clerk))
  end

  test "should destroy clerk" do
    assert_difference('Clerk.count', -1) do
      delete :destroy, id: @clerk
    end

    assert_redirected_to clerks_path
  end
end
