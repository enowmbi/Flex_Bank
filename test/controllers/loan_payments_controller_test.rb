require 'test_helper'

class LoanPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan_payment = loan_payments(:one)
  end

  test "should get index" do
    get loan_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_loan_payment_url
    assert_response :success
  end

  test "should create loan_payment" do
    assert_difference('LoanPayment.count') do
      post loan_payments_url, params: { loan_payment: { charges_paid: @loan_payment.charges_paid, date_of_payment: @loan_payment.date_of_payment, interest_expected: @loan_payment.interest_expected, interest_paid: @loan_payment.interest_paid, loan_id: @loan_payment.loan_id, principal_expected: @loan_payment.principal_expected, principal_paid: @loan_payment.principal_paid } }
    end

    assert_redirected_to loan_payment_url(LoanPayment.last)
  end

  test "should show loan_payment" do
    get loan_payment_url(@loan_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_loan_payment_url(@loan_payment)
    assert_response :success
  end

  test "should update loan_payment" do
    patch loan_payment_url(@loan_payment), params: { loan_payment: { charges_paid: @loan_payment.charges_paid, date_of_payment: @loan_payment.date_of_payment, interest_expected: @loan_payment.interest_expected, interest_paid: @loan_payment.interest_paid, loan_id: @loan_payment.loan_id, principal_expected: @loan_payment.principal_expected, principal_paid: @loan_payment.principal_paid } }
    assert_redirected_to loan_payment_url(@loan_payment)
  end

  test "should destroy loan_payment" do
    assert_difference('LoanPayment.count', -1) do
      delete loan_payment_url(@loan_payment)
    end

    assert_redirected_to loan_payments_url
  end
end
