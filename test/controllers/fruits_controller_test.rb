require 'test_helper'

class FruitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fruits_index_url
    assert_response :success
  end

  test "should get create" do
    get fruits_create_url
    assert_response :success
  end

  test "should get destroy" do
    get fruits_destroy_url
    assert_response :success
  end

  test "should get update" do
    get fruits_update_url
    assert_response :success
  end

end
