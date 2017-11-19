require 'test_helper'

class BankAccountTest < ActiveSupport::TestCase

  def setup
    #we'll set up client_id and bank_account_type_id since it will be used in all test - we'll use the DRY approach
    @bank_account = BankAccount.new(client_id: clients(:one).id, bank_account_type_id: bank_account_types(:one).id)
  end

  test "bank account must be valid" do 
    @bank_account.account_number = bank_accounts(:one).account_number
    @bank_account.currency = bank_accounts(:one).currency
    # @bank_account.bank_account_type_id = bank_account_types(:one).id 
    # @bank_account.client_id = clients(:one).id
    assert @bank_account.valid?,"bank account is not valid #{@bank_account.errors.full_messages}"
  end

  test "bank account should not be valid without account number" do 
    @bank_account.account_number = nil
    @bank_account.currency = bank_accounts(:one).currency
    assert_not @bank_account.valid?,"bank account is valid without account number"
  end

  test "bank account should not be valid without currency" do 
    @bank_account.account_number = bank_accounts(:one).account_number 
    @bank_account.currency =nil
    assert_not @bank_account.valid?,"bank account is valid without account number"
  end 


end
