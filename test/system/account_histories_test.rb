require "application_system_test_case"

class AccountHistoriesTest < ApplicationSystemTestCase
  setup do
    @account_history = account_histories(:one)
  end

  test "visiting the index" do
    visit account_histories_url
    assert_selector "h1", text: "Account Histories"
  end

  test "creating a Account history" do
    visit account_histories_url
    click_on "New Account History"

    fill_in "Account", with: @account_history.Account_id
    fill_in "Credit rating", with: @account_history.credit_rating
    click_on "Create Account history"

    assert_text "Account history was successfully created"
    click_on "Back"
  end

  test "updating a Account history" do
    visit account_histories_url
    click_on "Edit", match: :first

    fill_in "Account", with: @account_history.Account_id
    fill_in "Credit rating", with: @account_history.credit_rating
    click_on "Update Account history"

    assert_text "Account history was successfully updated"
    click_on "Back"
  end

  test "destroying a Account history" do
    visit account_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account history was successfully destroyed"
  end
end
