require 'test_helper'

class AccountTypeTest < ActiveSupport::TestCase

  setup do 
    @account_type = AccountType.new
  end

  test "account type should be valid" do 
    @account_type.name = account_types(:one).name
    @account_type.description = account_types(:one).description
    @account_type.normal_balance = account_types(:one).normal_balance
    assert @account_type.valid?,"account type is not valid - #{@account_type.errors.full_messages}"
  end


  test "account type should not be valid without name" do
    @account_type.name = nil
    @account_type.description = account_types(:one).description
    @account_type.normal_balance = account_types(:one).normal_balance
    assert_not @account_type.valid?,"account type valid without name"
  end

  test "account type should not be valid without description" do
    @account_type.name = account_types(:one).name
    @account_type.description = nil
    @account_type.normal_balance = account_types(:one).normal_balance
    assert_not @account_type.valid?, "account type valid without description"
  end

  test "account type should not be valid without normal balance" do 
    @account_type.name = account_types(:one).name
    @account_type.description = account_types(:one).description
    @account_type.normal_balance = nil
    assert_not @account_type.valid?, "account type valid without normal balance"
  end

  test "account type should not be valid if normal balance is not debit or credit" do 
    @account_type.name = account_types(:one).name
    @account_type.description = account_types(:one).description
    normal_balance = ["Debit","Credit"]
    @account_type.normal_balance = "not_debit"
    assert_not_includes(normal_balance,@account_type.normal_balance)
  end
end

