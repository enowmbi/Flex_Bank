require 'test_helper'

class LoanOfficersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan_officer = loan_officers(:one)
  end

  test "should get index" do
    get loan_officers_url
    assert_response :success
  end

  test "should get new" do
    get new_loan_officer_url
    assert_response :success
  end

  test "should create loan_officer" do
    assert_difference('LoanOfficer.count') do
      post loan_officers_url, params: { loan_officer: { employee_id: @loan_officer.employee_id, loan_id: @loan_officer.loan_id } }
    end

    assert_redirected_to loan_officer_url(LoanOfficer.last)
  end

  test "should show loan_officer" do
    get loan_officer_url(@loan_officer)
    assert_response :success
  end

  test "should get edit" do
    get edit_loan_officer_url(@loan_officer)
    assert_response :success
  end

  test "should update loan_officer" do
    patch loan_officer_url(@loan_officer), params: { loan_officer: { employee_id: @loan_officer.employee_id, loan_id: @loan_officer.loan_id } }
    assert_redirected_to loan_officer_url(@loan_officer)
  end

  test "should destroy loan_officer" do
    assert_difference('LoanOfficer.count', -1) do
      delete loan_officer_url(@loan_officer)
    end

    assert_redirected_to loan_officers_url
  end
end
