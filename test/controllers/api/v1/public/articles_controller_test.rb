require 'test_helper'

class Api::V1::Public::ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_public_articles_index_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_public_articles_show_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_public_articles_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_public_articles_update_url
    assert_response :success
  end

  test "should get destory" do
    get api_v1_public_articles_destory_url
    assert_response :success
  end

end
