require 'test_helper'

class AccountTest < ActiveSupport::TestCase

  def setup
    @account = Account.new(account_type_id: account_types(:one).id)
  end

  test "account should be valid" do 
    @account.name = "social"
    @account.description = "description"
    assert @account.valid? ,"account is not valid - #{@account.errors.full_messages}"
  end

  test "account should not be valid without name" do 
    @account.name = nil
    @account.description = "account description"
    @account.code = "my code"
    assert_not @account.valid?,"account valid without name"
  end


  test "account should not be valid without description" do 
    @account.name = "social"
    @account.description = nil
    @account.code = "my code"
    assert_not @account.valid?,"account valid without description"
  end

end
