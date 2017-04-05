require 'test_helper'

class TodoListControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get root_path
    assert_response :success
  end

  test "should get active" do
    get active_path
    assert_response :success
  end

  test "should get completed" do
    get completed_path
    assert_response :success
  end

end
