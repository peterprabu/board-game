require "test_helper"

class MoneyManagersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @money_manager = money_managers(:one)
  end

  test "should get index" do
    get money_managers_url
    assert_response :success
  end

  test "should get new" do
    get new_money_manager_url
    assert_response :success
  end

  test "should create money_manager" do
    assert_difference("MoneyManager.count") do
      post money_managers_url, params: { money_manager: {  } }
    end

    assert_redirected_to money_manager_url(MoneyManager.last)
  end

  test "should show money_manager" do
    get money_manager_url(@money_manager)
    assert_response :success
  end

  test "should get edit" do
    get edit_money_manager_url(@money_manager)
    assert_response :success
  end

  test "should update money_manager" do
    patch money_manager_url(@money_manager), params: { money_manager: {  } }
    assert_redirected_to money_manager_url(@money_manager)
  end

  test "should destroy money_manager" do
    assert_difference("MoneyManager.count", -1) do
      delete money_manager_url(@money_manager)
    end

    assert_redirected_to money_managers_url
  end
end
