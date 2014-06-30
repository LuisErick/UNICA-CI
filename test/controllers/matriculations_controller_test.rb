require 'test_helper'

class MatriculationsControllerTest < ActionController::TestCase
  setup do
    @matriculation = matriculations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matriculations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matriculation" do
    assert_difference('Matriculation.count') do
      post :create, matriculation: { acceptance_day: @matriculation.acceptance_day, pre_matriculation_id: @matriculation.pre_matriculation_id }
    end

    assert_redirected_to matriculation_path(assigns(:matriculation))
  end

  test "should show matriculation" do
    get :show, id: @matriculation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matriculation
    assert_response :success
  end

  test "should update matriculation" do
    patch :update, id: @matriculation, matriculation: { acceptance_day: @matriculation.acceptance_day, pre_matriculation_id: @matriculation.pre_matriculation_id }
    assert_redirected_to matriculation_path(assigns(:matriculation))
  end

  test "should destroy matriculation" do
    assert_difference('Matriculation.count', -1) do
      delete :destroy, id: @matriculation
    end

    assert_redirected_to matriculations_path
  end
end
