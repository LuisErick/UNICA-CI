require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { address: @person.address, birthday: @person.birthday, birthplace: @person.birthplace, department: @person.department, district: @person.district, dni: @person.dni, home_phone: @person.home_phone, marital_status_id: @person.marital_status_id, maternal_lastname: @person.maternal_lastname, mobile_phone: @person.mobile_phone, name: @person.name, paternal_lastname: @person.paternal_lastname, province: @person.province, sex: @person.sex, user_id: @person.user_id }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    patch :update, id: @person, person: { address: @person.address, birthday: @person.birthday, birthplace: @person.birthplace, department: @person.department, district: @person.district, dni: @person.dni, home_phone: @person.home_phone, marital_status_id: @person.marital_status_id, maternal_lastname: @person.maternal_lastname, mobile_phone: @person.mobile_phone, name: @person.name, paternal_lastname: @person.paternal_lastname, province: @person.province, sex: @person.sex, user_id: @person.user_id }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
