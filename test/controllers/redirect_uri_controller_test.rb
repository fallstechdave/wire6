require "test_helper"

class RedirectUriControllerTest < ActionDispatch::IntegrationTest
  test "should get oidc_get" do
    get redirect_uri_oidc_get_url
    assert_response :success
  end

  test "should get oidc_post" do
    get redirect_uri_oidc_post_url
    assert_response :success
  end

  test "should get oidc_put" do
    get redirect_uri_oidc_put_url
    assert_response :success
  end

  test "should get oidc_delete" do
    get redirect_uri_oidc_delete_url
    assert_response :success
  end
end
