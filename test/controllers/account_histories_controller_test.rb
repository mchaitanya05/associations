require "test_helper"

class AccountHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_history = account_histories(:one)
  end

  test "should get index" do
    get account_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_account_history_url
    assert_response :success
  end

  test "should create account_history" do
    assert_difference('AccountHistory.count') do
      post account_histories_url, params: { account_history: { Account_id: @account_history.Account_id, credit_rating: @account_history.credit_rating } }
    end

    assert_redirected_to account_history_url(AccountHistory.last)
  end

  test "should show account_history" do
    get account_history_url(@account_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_history_url(@account_history)
    assert_response :success
  end

  test "should update account_history" do
    patch account_history_url(@account_history), params: { account_history: { Account_id: @account_history.Account_id, credit_rating: @account_history.credit_rating } }
    assert_redirected_to account_history_url(@account_history)
  end

  test "should destroy account_history" do
    assert_difference('AccountHistory.count', -1) do
      delete account_history_url(@account_history)
    end

    assert_redirected_to account_histories_url
  end
end
