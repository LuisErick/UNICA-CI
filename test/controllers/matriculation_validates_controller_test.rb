require 'test_helper'

class MatriculationValidatesControllerTest < ActionController::TestCase
  setup do
    @matriculation_validate = matriculation_validates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matriculation_validates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matriculation_validate" do
    assert_difference('MatriculationValidate.count') do
      post :create, matriculation_validate: { institution: @matriculation_validate.institution, matriculation_id: @matriculation_validate.matriculation_id, state: @matriculation_validate.state }
    end

    assert_redirected_to matriculation_validate_path(assigns(:matriculation_validate))
  end

  test "should show matriculation_validate" do
    get :show, id: @matriculation_validate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matriculation_validate
    assert_response :success
  end

  test "should update matriculation_validate" do
    patch :update, id: @matriculation_validate, matriculation_validate: { institution: @matriculation_validate.institution, matriculation_id: @matriculation_validate.matriculation_id, state: @matriculation_validate.state }
    assert_redirected_to matriculation_validate_path(assigns(:matriculation_validate))
  end

  test "should destroy matriculation_validate" do
    assert_difference('MatriculationValidate.count', -1) do
      delete :destroy, id: @matriculation_validate
    end

    assert_redirected_to matriculation_validates_path
  end
end
