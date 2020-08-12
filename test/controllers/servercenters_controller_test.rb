require 'test_helper'

class ServercentersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @servercenter = servercenters(:one)
  end

  test "should get index" do
    get servercenters_url
    assert_response :success
  end

  test "should get new" do
    get new_servercenter_url
    assert_response :success
  end

  test "should create servercenter" do
    assert_difference('Servercenter.count') do
      post servercenters_url, params: { servercenter: { code: @servercenter.code, country_id: @servercenter.country_id, server_available: @servercenter.server_available, servers_capacity: @servercenter.servers_capacity } }
    end

    assert_redirected_to servercenter_url(Servercenter.last)
  end

  test "should show servercenter" do
    get servercenter_url(@servercenter)
    assert_response :success
  end

  test "should get edit" do
    get edit_servercenter_url(@servercenter)
    assert_response :success
  end

  test "should update servercenter" do
    patch servercenter_url(@servercenter), params: { servercenter: { code: @servercenter.code, country_id: @servercenter.country_id, server_available: @servercenter.server_available, servers_capacity: @servercenter.servers_capacity } }
    assert_redirected_to servercenter_url(@servercenter)
  end

  test "should destroy servercenter" do
    assert_difference('Servercenter.count', -1) do
      delete servercenter_url(@servercenter)
    end

    assert_redirected_to servercenters_url
  end
end
