require 'test_helper'

class AccountTypeTest < ActiveSupport::TestCase

  def setup 
    @accounting_transaction = AccountingTransaction.new
  end

  test "should not be valid without description" do 
    @accounting_transaction.description = nil
    assert_not @accounting_transaction.valid?,"Accounting Transaction valid without description"
  end

  test "should not be valid without transaction date" do 
    @accounting_transaction.description = "Description"
    @accounting_transaction.transaction_date = nil
    assert_not @accounting_transaction.valid?, "Accounting Transaction valid without transaction date"
  end

end
