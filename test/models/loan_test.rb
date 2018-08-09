require 'test_helper'

class LoanTest < ActiveSupport::TestCase

  setup do 
    @loan = loans(:one)
  end

  test "loan should be valid" do 
     assert @loan.valid?,"loan is invalid - #{@loan.errors.full_messages}"
  end

  test "loan should not be valid without principal requested" do 
    @loan.principal_requested = nil
    assert_not @loan.valid?,"loan valid without principal requested"
  end

  test "loan should not be valid without principal requested being a positive number" do 
    @loan.principal_requested = -30 
    assert_not @loan.valid?,"loan valid without principal requested being a positive number"
  end 

  test "loan should not be valid without principal approved" do 
    @loan.principal_approved = nil
    assert_not @loan.valid?,"loan valid without principal approved"
  end 

  test "loan should not be valid without principal approved being positive number" do 
    @loan.principal_approved = -1
    assert_not @loan.valid?,"loan valid without principal approved being a positive number"
  end

  test "loan should not be valid without interest" do 
    @loan.interest = nil
    assert_not @loan.valid?, "loan valid without interest"
  end

  test "loan should not be valid without interest being a positive number" do 
    @loan.interest = 0
    assert_not @loan.valid?, "loan valid without interest being positive number"
  end

  test "loan should not be valid without charges" do 
    @loan.charges = nil
    assert_not @loan.valid?,"loan valid without charges"
  end

  test "loan should not be valid without charges being a zero or  positive number" do 
    @loan.charges = -1
    assert_not @loan.valid?,"loan valid without charges being zero or positive number"
  end

  test "loan should not be valid without without percent entry" do 
    @loan.percent = nil
     assert_not @loan.valid?,"loan valid without percent entry"
  end

  test "loan should not be valid without percent being true or false" do 
    loan_percent = ["true","false"]
    @loan.percent = "not_false"
    assert_not_includes loan_percent, @loan.percent
  end

  test "loan should not be valid without paid in full" do 
    @loan.paid_in_full = nil
    assert_not @loan.valid?,"loan valid without paid in full"
  end

  test "loan should not be valid without paid in full being either true or false" do 
    loan_paid = ["true","false"]
    @loan.paid_in_full = "not false"
    assert_not_includes loan_paid, @loan.paid_in_full
  end

  test "loan should not be valid without application fee" do 
    @loan.application_fee = -1 
    assert_not @loan.valid?,"loan valid without application fee"
  end

  test "loan should not be valid without start date" do 
  @loan.starts_on = nil
  assert_not @loan.valid?,"loan valid without start date"
  end

  test "loan should not be valid without end date" do 
    @loan.ends_on = nil
    assert_not @loan.valid?,"loan valid without end date"
  end

  test "loan should not be valid without duration" do
    @loan.duration = -1
    assert_not @loan.valid?,"loan valid without duration"
  end

  test "loan should not be valid without end date greater than start date" do 
    t1 = Time.now
    t2 = Time.now - 1.day
    @loan.starts_on = t1
    @loan.ends_on = t2
    assert_not(@loan.valid?,"loan valid without end date greater than start date") 
  end

end
