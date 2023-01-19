require 'test_helper'

class MocropostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mocroposts_index_url
    assert_response :success
  end

  test "should get show" do
    get mocroposts_show_url
    assert_response :success
  end

  test "should get new" do
    get mocroposts_new_url
    assert_response :success
  end

  test "should get edit" do
    get mocroposts_edit_url
    assert_response :success
  end

  test "should get update" do
    get mocroposts_update_url
    assert_response :success
  end

  test "should get destroy" do
    get mocroposts_destroy_url
    assert_response :success
  end

  test "should get create" do
    get mocroposts_create_url
    assert_response :success
  end

end
