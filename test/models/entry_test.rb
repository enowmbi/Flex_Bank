require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  #  "description" #  "account_id" #  "amount", #  "entry_type" #  "accounting_transaction_id"

  setup do 
    @entry = Entry.new(account_id: entries(:one).account_id, accounting_transaction_id: entries(:one).accounting_transaction_id, description: entries(:one).description, amount: entries(:one).amount, entry_type: entries(:one).entry_type)
  end

  test "entry should be valid" do 
    assert @entry.valid?,"entry is not valid - #{@entry.errors.full_messages}"
  end

  test "entry should not be valid without description" do 
    @entry.description = nil
    assert_not @entry.valid?,"entry valid without description"
  end

  test "entry should not be valid without amount" do 
    @entry.amount = nil
    assert_not(@entry.valid? ,"entry valid without amount") #if @entry.amount.nil? == true || @entry.amount.zero? == true || @entry.amount.positive? == false 
  end

  test "entry should not be valid without positive amount" do 
    @entry.amount = -6
    assert_not(@entry.valid? ,"entry valid without positive amount") #if @entry.amount.nil? == true || @entry.amount.zero? == true || @entry.amount.positive? == false 
  end

  test "entry should not be valid without zero amount" do 
    @entry.amount = 0
    assert_not(@entry.valid? ,"entry valid without zero amount") #if @entry.amount.nil? == true || @entry.amount.zero? == true || @entry.amount.positive? == false 
  end

  test "entry should not be valid without entry type" do 
    @entry.entry_type = nil
    assert_not @entry.valid?, "entry valid without entry type"
  end

  test "entry should not be valid without entry type being credit or debit" do 
    entry_type = ["Debit","Credit"]
    @entry.entry_type = "not_debit"
    assert_not_includes(entry_type,@entry.entry_type)
  end

  test "entry should not be valid without account id" do 
    @entry.account_id = nil
    assert_not @entry.valid?, "entry valid without account id"
  end

  test "entry should not be valid without accounting transaction id" do 
    @entry.accounting_transaction_id = nil
    assert_not @entry.valid?, "entry valid without accounting transaction id"
  end
end
