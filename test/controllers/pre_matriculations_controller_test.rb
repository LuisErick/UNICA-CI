require 'test_helper'

class PreMatriculationsControllerTest < ActionController::TestCase
  setup do
    @pre_matriculation = pre_matriculations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pre_matriculations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pre_matriculation" do
    assert_difference('PreMatriculation.count') do
      post :create, pre_matriculation: { curse_type_id: @pre_matriculation.curse_type_id, languaje_id: @pre_matriculation.languaje_id, person_id: @pre_matriculation.person_id, state: @pre_matriculation.state }
    end

    assert_redirected_to pre_matriculation_path(assigns(:pre_matriculation))
  end

  test "should show pre_matriculation" do
    get :show, id: @pre_matriculation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pre_matriculation
    assert_response :success
  end

  test "should update pre_matriculation" do
    patch :update, id: @pre_matriculation, pre_matriculation: { curse_type_id: @pre_matriculation.curse_type_id, languaje_id: @pre_matriculation.languaje_id, person_id: @pre_matriculation.person_id, state: @pre_matriculation.state }
    assert_redirected_to pre_matriculation_path(assigns(:pre_matriculation))
  end

  test "should destroy pre_matriculation" do
    assert_difference('PreMatriculation.count', -1) do
      delete :destroy, id: @pre_matriculation
    end

    assert_redirected_to pre_matriculations_path
  end
end
