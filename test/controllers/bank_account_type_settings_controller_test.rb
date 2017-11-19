require 'test_helper'

class BankAccountTypeSettingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bank_account_type_setting = bank_account_type_settings(:one)
  end

  test "should get index" do
    get bank_account_type_settings_url
    assert_response :success
  end

  test "should get new" do
    get new_bank_account_type_setting_url
    assert_response :success
  end

  test "should create bank_account_type_setting" do
    assert_difference('BankAccountTypeSetting.count') do
      post bank_account_type_settings_url, params: { bank_account_type_setting: { apply_to: @bank_account_type_setting.apply_to, bank_account_type_id: @bank_account_type_setting.bank_account_type_id, description: @bank_account_type_setting.description, frequency: @bank_account_type_setting.frequency, name: @bank_account_type_setting.name, percent: @bank_account_type_setting.percent, setting_type_id: @bank_account_type_setting.setting_type_id, value: @bank_account_type_setting.value } }
    end

    assert_redirected_to bank_account_type_setting_url(BankAccountTypeSetting.last)
  end

  test "should show bank_account_type_setting" do
    get bank_account_type_setting_url(@bank_account_type_setting)
    assert_response :success
  end

  test "should get edit" do
    get edit_bank_account_type_setting_url(@bank_account_type_setting)
    assert_response :success
  end

  test "should update bank_account_type_setting" do
    patch bank_account_type_setting_url(@bank_account_type_setting), params: { bank_account_type_setting: { apply_to: @bank_account_type_setting.apply_to, bank_account_type_id: @bank_account_type_setting.bank_account_type_id, description: @bank_account_type_setting.description, frequency: @bank_account_type_setting.frequency, name: @bank_account_type_setting.name, percent: @bank_account_type_setting.percent, setting_type_id: @bank_account_type_setting.setting_type_id, value: @bank_account_type_setting.value } }
    assert_redirected_to bank_account_type_setting_url(@bank_account_type_setting)
  end

  test "should destroy bank_account_type_setting" do
    assert_difference('BankAccountTypeSetting.count', -1) do
      delete bank_account_type_setting_url(@bank_account_type_setting)
    end

    assert_redirected_to bank_account_type_settings_url
  end
end
