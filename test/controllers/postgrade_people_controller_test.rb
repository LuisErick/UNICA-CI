require 'test_helper'

class PostgradePeopleControllerTest < ActionController::TestCase
  setup do
    @postgrade_person = postgrade_people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postgrade_people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postgrade_person" do
    assert_difference('PostgradePerson.count') do
      post :create, postgrade_person: { person_id: @postgrade_person.person_id, postgrade_type_id: @postgrade_person.postgrade_type_id }
    end

    assert_redirected_to postgrade_person_path(assigns(:postgrade_person))
  end

  test "should show postgrade_person" do
    get :show, id: @postgrade_person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postgrade_person
    assert_response :success
  end

  test "should update postgrade_person" do
    patch :update, id: @postgrade_person, postgrade_person: { person_id: @postgrade_person.person_id, postgrade_type_id: @postgrade_person.postgrade_type_id }
    assert_redirected_to postgrade_person_path(assigns(:postgrade_person))
  end

  test "should destroy postgrade_person" do
    assert_difference('PostgradePerson.count', -1) do
      delete :destroy, id: @postgrade_person
    end

    assert_redirected_to postgrade_people_path
  end
end
