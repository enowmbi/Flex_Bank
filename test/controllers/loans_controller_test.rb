require 'test_helper'

class LoansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan = loans(:one)
  end

  test "should get index" do
    get loans_url
    assert_response :success
  end

  test "should get new" do
    get new_loan_url
    assert_response :success
  end

  test "should create loan" do
    assert_difference('Loan.count') do
      post loans_url, params: { loan: { interest: @loan.interest, paid_in_full: @loan.paid_in_full, percent: @loan.percent, principal_approved: @loan.principal_approved, principal_requested: @loan.principal_requested, charges: @loan.charges, application_fee: @loan.application_fee, starts_on: @loan.starts_on, ends_on: @loan.ends_on, duration: @loan.duration } }
    end

    assert_redirected_to loan_url(Loan.last)
  end

  test "should show loan" do
    get loan_url(@loan)
    assert_response :success
  end

  test "should get edit" do
    get edit_loan_url(@loan)
    assert_response :success
  end

  test "should update loan" do

    patch loan_url(@loan), params: { loan: { interest: @loan.interest, paid_in_full: @loan.paid_in_full, percent: @loan.percent, principal_approved: @loan.principal_approved, principal_requested: @loan.principal_requested, charges: @loan.charges, application_fee: @loan.application_fee, starts_on: @loan.starts_on, ends_on: @loan.ends_on, duration: @loan.duration } }
    # patch loan_url(@loan), params: { loan: { interest: @loan.interest, paid_in_full: @loan.paid_in_full, percent: @loan.percent, principal_approved: @loan.principal_approved, principal_requested: @loan.principal_requested } }
    assert_redirected_to loan_url(@loan)
  end

  test "should destroy loan" do
    assert_difference('Loan.count', -1) do
      delete loan_url(@loan)
    end

    assert_redirected_to loans_url
  end
end
