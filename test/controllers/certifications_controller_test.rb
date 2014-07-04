require 'test_helper'

class CertificationsControllerTest < ActionController::TestCase
  setup do
    @certification = certifications(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certifications)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certification" do
    assert_difference('Certification.count') do
      post :create, certification: { delivery_date: @certification.delivery_date, matriculation_id: @certification.matriculation_id, state: @certification.state }
    end

    assert_redirected_to certification_path(assigns(:certification))
  end

  test "should show certification" do
    get :show, id: @certification
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certification
    assert_response :success
  end

  test "should update certification" do
    patch :update, id: @certification, certification: { delivery_date: @certification.delivery_date, matriculation_id: @certification.matriculation_id, state: @certification.state }
    assert_redirected_to certification_path(assigns(:certification))
  end

  test "should destroy certification" do
    assert_difference('Certification.count', -1) do
      delete :destroy, id: @certification
    end

    assert_redirected_to certifications_path
  end
end
