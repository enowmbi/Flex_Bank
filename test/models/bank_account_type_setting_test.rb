require 'test_helper'

class BankAccountTypeBankSettingTest < ActiveSupport::TestCase

  setup do
    @bank_account_type_setting = bank_account_type_settings(:one)
  end

  test "bank account type setting should  be valid" do 
    assert @bank_account_type_setting.valid?,"Bank account type setting is not valid - #{@bank_account_type_setting.errors.full_messages}"
  end 

  test "bank account type setting should not be valid without name" do 
    @bank_account_type_setting.name = nil
    assert_not @bank_account_type_setting.valid?,"Bank account type setting is valid without a name"
  end

  test "bank account type setting should not be valid without value" do 
    @bank_account_type_setting.value = nil
    assert_not @bank_account_type_setting.valid?,"Bank account type setting is valid without a value"
  end

  test "bank account type setting should not be valid without description" do 
    @bank_account_type_setting.description = nil
    assert_not @bank_account_type_setting.valid?,"Bank account type setting is valid without a description"
  end

  test "bank account type setting should not be valid without bank account type" do 
    @bank_account_type_setting.bank_account_type_id = nil
    assert_not @bank_account_type_setting.valid?,"Bank account type setting is valid without a bank account type"
  end

  test "bank account type setting should not be valid without setting type" do 
    @bank_account_type_setting.setting_type_id = nil
    assert_not @bank_account_type_setting.valid?,"Bank account type setting is valid without a setting type"
  end

  # test "bank account type setting should not be valid without frequency" do 
  #   @bank_account_type_setting.value = nil
  #   assert_not @bank_account_type_setting.valid?,"Bank account type setting is valid without a frequency"
  # end
  #
  # test "bank account type setting should not be valid without percent" do 
  #   @bank_account_type_setting.value = nil
  #   assert_not @bank_account_type_setting.valid?,"Bank account type setting is valid without a value"
  # end    
  #
  # test "bank account type setting should not be valid without apply_to" do 
  #   @bank_account_type_setting.value = nil
  #   assert_not @bank_account_type_setting.valid?,"Bank account type setting is valid without a value"
  # end

end
