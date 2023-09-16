require "application_system_test_case"

class MoneyManagersTest < ApplicationSystemTestCase
  setup do
    @money_manager = money_managers(:one)
  end

  test "visiting the index" do
    visit money_managers_url
    assert_selector "h1", text: "Money managers"
  end

  test "should create money manager" do
    visit money_managers_url
    click_on "New money manager"

    click_on "Create Money manager"

    assert_text "Money manager was successfully created"
    click_on "Back"
  end

  test "should update Money manager" do
    visit money_manager_url(@money_manager)
    click_on "Edit this money manager", match: :first

    click_on "Update Money manager"

    assert_text "Money manager was successfully updated"
    click_on "Back"
  end

  test "should destroy Money manager" do
    visit money_manager_url(@money_manager)
    click_on "Destroy this money manager", match: :first

    assert_text "Money manager was successfully destroyed"
  end
end
