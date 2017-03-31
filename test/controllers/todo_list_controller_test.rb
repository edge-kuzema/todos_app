require 'test_helper'

class TodoListControllerTest < ActionDispatch::IntegrationTest
  test "should get all" do
    get todo_list_all_url
    assert_response :success
  end

  test "should get active" do
    get todo_list_active_url
    assert_response :success
  end

  test "should get completed" do
    get todo_list_completed_url
    assert_response :success
  end

end
