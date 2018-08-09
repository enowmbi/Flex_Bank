require 'test_helper'

class LoanOfficerTest < ActiveSupport::TestCase

  setup do 
    @loan_officer = LoanOfficer.new(loan_id: loan_officers(:one).loan_id, employee_id: loan_officers(:one).employee_id)
  end

  test "loan officer should be valid" do 
    assert @loan_officer.valid?,"loan officer not valid #{@loan_officer.errors.full_messages}"
  end

  test "loan officer should not be valid without loan id" do 
    @loan_officer.loan_id = nil
    assert_not @loan_officer.valid?,"loan officer valid without loan id"
  end

  test "loan officer should not be valid without employee id" do 
    @loan_officer.employee_id = nil
    assert_not @loan_officer.valid?, "loan officer valid without employee id"
  end

end
