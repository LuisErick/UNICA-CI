require 'test_helper'

class TeacherAttendacesControllerTest < ActionController::TestCase
  setup do
    @teacher_attendace = teacher_attendaces(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher_attendaces)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher_attendace" do
    assert_difference('TeacherAttendace.count') do
      post :create, teacher_attendace: { arrival_time: @teacher_attendace.arrival_time, day: @teacher_attendace.day, dismissal_time: @teacher_attendace.dismissal_time, package_id: @teacher_attendace.package_id, session_number: @teacher_attendace.session_number, state: @teacher_attendace.state }
    end

    assert_redirected_to teacher_attendace_path(assigns(:teacher_attendace))
  end

  test "should show teacher_attendace" do
    get :show, id: @teacher_attendace
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher_attendace
    assert_response :success
  end

  test "should update teacher_attendace" do
    patch :update, id: @teacher_attendace, teacher_attendace: { arrival_time: @teacher_attendace.arrival_time, day: @teacher_attendace.day, dismissal_time: @teacher_attendace.dismissal_time, package_id: @teacher_attendace.package_id, session_number: @teacher_attendace.session_number, state: @teacher_attendace.state }
    assert_redirected_to teacher_attendace_path(assigns(:teacher_attendace))
  end

  test "should destroy teacher_attendace" do
    assert_difference('TeacherAttendace.count', -1) do
      delete :destroy, id: @teacher_attendace
    end

    assert_redirected_to teacher_attendaces_path
  end
end
