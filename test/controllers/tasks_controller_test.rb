require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  test "should get pending_matriculations" do
    get :pending_matriculations
    assert_response :success
  end

end
