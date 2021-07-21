require 'test_helper'

class Api::V1::Public::SiteCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_public_site_comments_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_public_site_comments_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_v1_public_site_comments_destroy_url
    assert_response :success
  end

end
