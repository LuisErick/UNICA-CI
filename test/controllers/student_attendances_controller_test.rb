require 'test_helper'

class StudentAttendancesControllerTest < ActionController::TestCase
  setup do
    @student_attendance = student_attendances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_attendances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_attendance" do
    assert_difference('StudentAttendance.count') do
      post :create, student_attendance: { attendance_date: @student_attendance.attendance_date, matriculation_course_id: @student_attendance.matriculation_course_id, state: @student_attendance.state }
    end

    assert_redirected_to student_attendance_path(assigns(:student_attendance))
  end

  test "should show student_attendance" do
    get :show, id: @student_attendance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_attendance
    assert_response :success
  end

  test "should update student_attendance" do
    patch :update, id: @student_attendance, student_attendance: { attendance_date: @student_attendance.attendance_date, matriculation_course_id: @student_attendance.matriculation_course_id, state: @student_attendance.state }
    assert_redirected_to student_attendance_path(assigns(:student_attendance))
  end

  test "should destroy student_attendance" do
    assert_difference('StudentAttendance.count', -1) do
      delete :destroy, id: @student_attendance
    end

    assert_redirected_to student_attendances_path
  end
end
