require 'test_helper'

class MatricualtionValidatesControllerTest < ActionController::TestCase
  setup do
    @matricualtion_validate = matricualtion_validates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matricualtion_validates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matricualtion_validate" do
    assert_difference('MatricualtionValidate.count') do
      post :create, matricualtion_validate: { institution: @matricualtion_validate.institution, matriculation_id: @matricualtion_validate.matriculation_id }
    end

    assert_redirected_to matricualtion_validate_path(assigns(:matricualtion_validate))
  end

  test "should show matricualtion_validate" do
    get :show, id: @matricualtion_validate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matricualtion_validate
    assert_response :success
  end

  test "should update matricualtion_validate" do
    patch :update, id: @matricualtion_validate, matricualtion_validate: { institution: @matricualtion_validate.institution, matriculation_id: @matricualtion_validate.matriculation_id }
    assert_redirected_to matricualtion_validate_path(assigns(:matricualtion_validate))
  end

  test "should destroy matricualtion_validate" do
    assert_difference('MatricualtionValidate.count', -1) do
      delete :destroy, id: @matricualtion_validate
    end

    assert_redirected_to matricualtion_validates_path
  end
end
