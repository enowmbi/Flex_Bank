require 'test_helper'

class BankAccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bank_account = bank_accounts(:one)
  end

  test "should get index" do
    get client_bank_accounts_url @bank_account.client_id
    assert_response :success
  end

  test "should get new" do
    get new_client_bank_account_url @bank_account.client_id, @bank_account
    assert_response :success
  end

  test "should create bank_account" do
    assert_difference('BankAccount.count') do
      post client_bank_accounts_url @bank_account.client_id, params: { bank_account: { account_number: @bank_account.account_number, account_officer: @bank_account.account_officer, bank_account_type_id: @bank_account.bank_account_type_id, currency: @bank_account.currency, enable_email_alert: @bank_account.enable_email_alert, enable_sms_alert: @bank_account.enable_sms_alert, client_id: @bank_account.client_id } }
    end

    assert_redirected_to client_bank_account_url(@bank_account.client_id,BankAccount.last)
  end

  test "should show bank_account" do
    get client_bank_account_url(@bank_account.client_id,@bank_account)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_bank_account_url(@bank_account.client_id,@bank_account)
    assert_response :success
  end

  test "should update bank_account" do
    patch client_bank_account_url(@bank_account.client_id,@bank_account), params: { bank_account: { account_number: @bank_account.account_number, account_officer: @bank_account.account_officer, bank_account_type_id: @bank_account.bank_account_type_id, currency: @bank_account.currency, enable_email_alert: @bank_account.enable_email_alert, enable_sms_alert: @bank_account.enable_sms_alert, client_id: @bank_account.client_id } }
    assert_redirected_to client_bank_account_url(@bank_account.client_id,@bank_account)
  end


  test "should destroy bank_account" do
    assert_difference('BankAccount.count', -1) do
      delete client_bank_account_url(@bank_account.client_id,@bank_account)
    end

    assert_redirected_to client_bank_accounts_url @bank_account.client_id
  end
end
