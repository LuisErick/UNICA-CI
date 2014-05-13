require 'test_helper'

class MatriculationCoursesControllerTest < ActionController::TestCase
  setup do
    @matriculation_course = matriculation_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matriculation_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matriculation_course" do
    assert_difference('MatriculationCourse.count') do
      post :create, matriculation_course: { end_date: @matriculation_course.end_date, final_grade: @matriculation_course.final_grade, matriculation_id: @matriculation_course.matriculation_id, package_id: @matriculation_course.package_id, start_date: @matriculation_course.start_date }
    end

    assert_redirected_to matriculation_course_path(assigns(:matriculation_course))
  end

  test "should show matriculation_course" do
    get :show, id: @matriculation_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matriculation_course
    assert_response :success
  end

  test "should update matriculation_course" do
    patch :update, id: @matriculation_course, matriculation_course: { end_date: @matriculation_course.end_date, final_grade: @matriculation_course.final_grade, matriculation_id: @matriculation_course.matriculation_id, package_id: @matriculation_course.package_id, start_date: @matriculation_course.start_date }
    assert_redirected_to matriculation_course_path(assigns(:matriculation_course))
  end

  test "should destroy matriculation_course" do
    assert_difference('MatriculationCourse.count', -1) do
      delete :destroy, id: @matriculation_course
    end

    assert_redirected_to matriculation_courses_path
  end
end
