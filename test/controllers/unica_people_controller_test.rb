require 'test_helper'

class UnicaPeopleControllerTest < ActionController::TestCase
  setup do
    @unica_person = unica_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unica_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unica_person" do
    assert_difference('UnicaPerson.count') do
      post :create, unica_person: { college_id: @unica_person.college_id, person_id: @unica_person.person_id, semester: @unica_person.semester }
    end

    assert_redirected_to unica_person_path(assigns(:unica_person))
  end

  test "should show unica_person" do
    get :show, id: @unica_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unica_person
    assert_response :success
  end

  test "should update unica_person" do
    patch :update, id: @unica_person, unica_person: { college_id: @unica_person.college_id, person_id: @unica_person.person_id, semester: @unica_person.semester }
    assert_redirected_to unica_person_path(assigns(:unica_person))
  end

  test "should destroy unica_person" do
    assert_difference('UnicaPerson.count', -1) do
      delete :destroy, id: @unica_person
    end

    assert_redirected_to unica_people_path
  end
end
