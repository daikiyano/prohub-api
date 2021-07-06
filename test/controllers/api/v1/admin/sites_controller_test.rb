require 'test_helper'

class Api::V1::Admin::SitesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_admin_sites_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_admin_sites_create_url
    assert_response :success
  end

  test "should get edit" do
    get api_v1_admin_sites_edit_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_admin_sites_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_admin_sites_destroy_url
    assert_response :success
  end

end
