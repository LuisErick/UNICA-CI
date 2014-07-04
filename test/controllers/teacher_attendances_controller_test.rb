require 'test_helper'

class TeacherAttendancesControllerTest < ActionController::TestCase
  setup do
    @teacher_attendance = teacher_attendances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teacher_attendances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher_attendance" do
    assert_difference('TeacherAttendance.count') do
      post :create, teacher_attendance: { arrival_time: @teacher_attendance.arrival_time, day: @teacher_attendance.day, dismissal_time: @teacher_attendance.dismissal_time, package_id: @teacher_attendance.package_id, session_number: @teacher_attendance.session_number, state: @teacher_attendance.state }
    end

    assert_redirected_to teacher_attendance_path(assigns(:teacher_attendance))
  end

  test "should show teacher_attendance" do
    get :show, id: @teacher_attendance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teacher_attendance
    assert_response :success
  end

  test "should update teacher_attendance" do
    patch :update, id: @teacher_attendance, teacher_attendance: { arrival_time: @teacher_attendance.arrival_time, day: @teacher_attendance.day, dismissal_time: @teacher_attendance.dismissal_time, package_id: @teacher_attendance.package_id, session_number: @teacher_attendance.session_number, state: @teacher_attendance.state }
    assert_redirected_to teacher_attendance_path(assigns(:teacher_attendance))
  end

  test "should destroy teacher_attendance" do
    assert_difference('TeacherAttendance.count', -1) do
      delete :destroy, id: @teacher_attendance
    end

    assert_redirected_to teacher_attendances_path
  end
end
