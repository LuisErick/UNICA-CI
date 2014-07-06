require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get schedules" do
    get :schedules
    assert_response :success
  end

  test "should get notes" do
    get :notes
    assert_response :success
  end

  test "should get certificates" do
    get :certificates
    assert_response :success
  end

end
