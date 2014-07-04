require 'test_helper'

class PreMariculationCommunicativesControllerTest < ActionController::TestCase
  setup do
    @pre_mariculation_communicative = pre_mariculation_communicatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pre_mariculation_communicatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pre_mariculation_communicative" do
    assert_difference('PreMariculationCommunicative.count') do
      post :create, pre_mariculation_communicative: { level_id: @pre_mariculation_communicative.level_id, pre_matriculation_id: @pre_mariculation_communicative.pre_matriculation_id }
    end

    assert_redirected_to pre_mariculation_communicative_path(assigns(:pre_mariculation_communicative))
  end

  test "should show pre_mariculation_communicative" do
    get :show, id: @pre_mariculation_communicative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pre_mariculation_communicative
    assert_response :success
  end

  test "should update pre_mariculation_communicative" do
    patch :update, id: @pre_mariculation_communicative, pre_mariculation_communicative: { level_id: @pre_mariculation_communicative.level_id, pre_matriculation_id: @pre_mariculation_communicative.pre_matriculation_id }
    assert_redirected_to pre_mariculation_communicative_path(assigns(:pre_mariculation_communicative))
  end

  test "should destroy pre_mariculation_communicative" do
    assert_difference('PreMariculationCommunicative.count', -1) do
      delete :destroy, id: @pre_mariculation_communicative
    end

    assert_redirected_to pre_mariculation_communicatives_path
  end
end
