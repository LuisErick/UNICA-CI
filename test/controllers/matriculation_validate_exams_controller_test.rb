require 'test_helper'

class MatriculationValidateExamsControllerTest < ActionController::TestCase
  setup do
    @matriculation_validate_exam = matriculation_validate_exams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matriculation_validate_exams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matriculation_validate_exam" do
    assert_difference('MatriculationValidateExam.count') do
      post :create, matriculation_validate_exam: { grade: @matriculation_validate_exam.grade, matriculation_validate: @matriculation_validate_exam.matriculation_validate }
    end

    assert_redirected_to matriculation_validate_exam_path(assigns(:matriculation_validate_exam))
  end

  test "should show matriculation_validate_exam" do
    get :show, id: @matriculation_validate_exam
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matriculation_validate_exam
    assert_response :success
  end

  test "should update matriculation_validate_exam" do
    patch :update, id: @matriculation_validate_exam, matriculation_validate_exam: { grade: @matriculation_validate_exam.grade, matriculation_validate: @matriculation_validate_exam.matriculation_validate }
    assert_redirected_to matriculation_validate_exam_path(assigns(:matriculation_validate_exam))
  end

  test "should destroy matriculation_validate_exam" do
    assert_difference('MatriculationValidateExam.count', -1) do
      delete :destroy, id: @matriculation_validate_exam
    end

    assert_redirected_to matriculation_validate_exams_path
  end
end
