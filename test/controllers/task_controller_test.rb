require 'test_helper'

class TaskControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get task_create_url
    assert_response :success
  end

  test "should get show" do
    get task_show_url
    assert_response :success
  end

  test "should get edit" do
    get task_edit_url
    assert_response :success
  end

  test "should get update" do
    get task_update_url
    assert_response :success
  end

  test "should get destory" do
    get task_destory_url
    assert_response :success
  end

end
