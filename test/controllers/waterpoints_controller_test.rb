require "test_helper"

class WaterpointsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get waterpoints_index_url
    assert_response :success
  end

  test "should get show" do
    get waterpoints_show_url
    assert_response :success
  end

  test "should get new" do
    get waterpoints_new_url
    assert_response :success
  end

  test "should get create" do
    get waterpoints_create_url
    assert_response :success
  end

  test "should get edit" do
    get waterpoints_edit_url
    assert_response :success
  end

  test "should get update" do
    get waterpoints_update_url
    assert_response :success
  end

  test "should get destroy" do
    get waterpoints_destroy_url
    assert_response :success
  end
end
