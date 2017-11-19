require 'test_helper'

class BankAccountTypeTest < ActiveSupport::TestCase

  def setup
    @bank_account_type = BankAccountType.new
  end

  test "bank account type should be valid" do 
    @bank_account_type.name = bank_account_types(:one).name
    @bank_account_type.description = bank_account_types(:one).description
    assert @bank_account_type.valid?,"bank account type is not valid - #{@bank_account_type.errors.full_messages}"
  end

  test "bank account type should not be valid without name" do 
    @bank_account_type.name = nil
    @bank_account_type.description = bank_account_types(:one).description
    assert_not @bank_account_type.valid?,"bank account type valid without name"
  end 

  test "bank account type should not be valid without description" do 
    @bank_account_type.name = bank_account_types(:one).name
    @bank_account_type.description = nil
    assert_not @bank_account_type.valid?,"bank account type valid without description"
  end 




end
