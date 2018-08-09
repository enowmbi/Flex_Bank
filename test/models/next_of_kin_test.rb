require 'test_helper'

class NextOfKinTest < ActiveSupport::TestCase

  setup do 
    @next_of_kin = next_of_kins(:one)
  end

  test "next of kin should be valid" do 
    assert @next_of_kin.valid?, "Next of kin is not valid - #{@next_of_kin.errors.full_messages}"
  end

  test "next_of_kin should not be valid without first name " do
    @next_of_kin.first_name = nil
    assert_not @next_of_kin.valid?,"Next of kin valid without first name !"
  end

  test "next_of_kin should not be valid without last name " do
    @next_of_kin.last_name = nil
    assert_not @next_of_kin.valid?,"Next of kin valid without last name !"
  end

  test "next_of_kin should not be valid without address" do 
    @next_of_kin.address = nil
    assert_not @next_of_kin.valid?,"Next of kin valid without address"
  end

  test "next_of_kin should not be valid without a relationship" do
    @next_of_kin.relationship = nil
    assert_not @next_of_kin.valid?, "Next of kin valid without relationship"
  end

  # test "next_of_kin should not be valid without identification number" do
  #   @next_of_kin.identification_number = nil
  #   assert_not @next_of_kin.valid?,"Next of kin valid without identification number"
  # end

  test "next_of_kin should not be valid without identification type id" do
    @next_of_kin.identification_type_id = nil
    assert_not @next_of_kin.valid?, "Next of kin valid without identification type id"
  end

  test "next of kin should not be valid without a bank account" do 
  @next_of_kin.bank_account_id = nil
  assert_not @next_of_kin.valid?,"Next of kin valid without bank account"
  end
end
