require 'test_helper'

class LoanPaymentTest < ActiveSupport::TestCase

  setup do 
    @loan_payment = LoanPayment.new(loan_id: loan_payments(:one).loan_id,principal_expected: loan_payments(:one).principal_expected, principal_paid: loan_payments(:one).principal_paid, interest_expected: loan_payments(:one).interest_expected, interest_paid: loan_payments(:one).interest_paid ,charges_paid: loan_payments(:one).charges_paid , date_of_payment: loan_payments(:one).date_of_payment) 
  end

  test "loan payment should be valid" do
    assert @loan_payment.valid?,"loan payment is not valid - #{@loan_payment.errors.full_messages}"
  end

  test "loan payment should not be valid without loan id" do 
    @loan_payment.loan_id = nil
    assert_not @loan_payment.valid?,"loan payment is valid without loan id"
  end

  test "loan payment should not be valid without principal expected" do 
    @loan_payment.principal_expected = nil
    assert_not @loan_payment.valid?,"loan payment is valid without principal expected"
  end 

  test "loan payment should not be valid without principal expected being a positive number" do 
    @loan_payment.principal_expected = "wss"
    assert_not @loan_payment.valid?,"loan payment is valid without a principal expected being positive number"
  end

  test "loan payment should not be valid without principal paid" do 
    @loan_payment.principal_paid = nil
    assert_not @loan_payment.valid?,"loan payment valid withouth principal paid"
  end

  test "loan payment should not be valid without principal paid being a zero or positive number" do 
    @loan_payment.principal_paid = -2
    assert_not @loan_payment.valid?, "loan payment valid without principal paid being zero or a positive number"
  end

  test "loan payment should not be valid without interest expected" do 
    @loan_payment.interest_expected = nil
    assert_not @loan_payment.valid?, "loan payment valid without interest expected"

  end

  test "loan payment should not be valid without interest expected being a zero or positive number" do 
    @loan_payment.interest_expected = -5
    assert_not @loan_payment.valid?, "loan payment valid without interest expected being zero or a positive number"
  end

  test "loan payment should not be valid without interest paid" do 
    @loan_payment.interest_paid = nil
    assert_not @loan_payment.valid?, "loan payment valid without interest paid"
  end

  test "loan payment should not be valid without interest paid being zero or a positive number" do 
    @loan_payment.interest_paid = -8
    assert_not @loan_payment.valid?, "loan payment valid without interest paid being zero or a positive number"
  end

  test "loan payment should not be valid without charges paid" do 
    @loan_payment.charges_paid = nil
    assert_not @loan_payment.valid?, "loan payment valid without charges paid"
  end

test "loan payment should not be valid without charges paid being zero or a positive number" do 
  @loan_payment.charges_paid = -7
  assert_not @loan_payment.valid?,"loan payment is valid without a principal expected being positive number"
end

test "loan payment should not be valid without date of payment" do 
  @loan_payment.date_of_payment = nil
  assert_not @loan_payment.valid?, "loan payment valid without date of payment"
end

end
