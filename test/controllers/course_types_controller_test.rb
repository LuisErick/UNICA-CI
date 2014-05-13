require 'test_helper'

class CourseTypesControllerTest < ActionController::TestCase
  setup do
    @course_type = course_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_type" do
    assert_difference('CourseType.count') do
      post :create, course_type: { description: @course_type.description, name: @course_type.name }
    end

    assert_redirected_to course_type_path(assigns(:course_type))
  end

  test "should show course_type" do
    get :show, id: @course_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_type
    assert_response :success
  end

  test "should update course_type" do
    patch :update, id: @course_type, course_type: { description: @course_type.description, name: @course_type.name }
    assert_redirected_to course_type_path(assigns(:course_type))
  end

  test "should destroy course_type" do
    assert_difference('CourseType.count', -1) do
      delete :destroy, id: @course_type
    end

    assert_redirected_to course_types_path
  end
end
