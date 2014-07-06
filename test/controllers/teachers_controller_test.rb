require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get schedules" do
    get :schedules
    assert_response :success
  end

  test "should get salaries" do
    get :salaries
    assert_response :success
  end

  test "should get comments" do
    get :comments
    assert_response :success
  end

end
