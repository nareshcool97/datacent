require "application_system_test_case"

class ServercentersTest < ApplicationSystemTestCase
  setup do
    @servercenter = servercenters(:one)
  end

  test "visiting the index" do
    visit servercenters_url
    assert_selector "h1", text: "Servercenters"
  end

  test "creating a Servercenter" do
    visit servercenters_url
    click_on "New Servercenter"

    fill_in "Code", with: @servercenter.code
    fill_in "Country", with: @servercenter.country_id
    fill_in "Server available", with: @servercenter.server_available
    fill_in "Servers capacity", with: @servercenter.servers_capacity
    click_on "Create Servercenter"

    assert_text "Servercenter was successfully created"
    click_on "Back"
  end

  test "updating a Servercenter" do
    visit servercenters_url
    click_on "Edit", match: :first

    fill_in "Code", with: @servercenter.code
    fill_in "Country", with: @servercenter.country_id
    fill_in "Server available", with: @servercenter.server_available
    fill_in "Servers capacity", with: @servercenter.servers_capacity
    click_on "Update Servercenter"

    assert_text "Servercenter was successfully updated"
    click_on "Back"
  end

  test "destroying a Servercenter" do
    visit servercenters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Servercenter was successfully destroyed"
  end
end
