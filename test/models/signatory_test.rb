require 'test_helper'

class SignatoryTest < ActiveSupport::TestCase

  setup do 
   @signatory = signatories(:one)
  end

  test "next of kin should be valid" do 
    assert @signatory.valid?, "Signatory is not valid - #{@signatory.errors.full_messages}"
  end

  test "signatory should not be valid without first name " do
    @signatory.first_name = nil
    assert_not @signatory.valid?,"Signatory valid without first name !"
  end

  test "signatory should not be valid without last name " do
    @signatory.last_name = nil
    assert_not @signatory.valid?,"Signatory valid without last name !"
  end

  test "signatory should not be valid without address" do 
    @signatory.address = nil
    assert_not @signatory.valid?,"Signatory valid without address"
  end

  test "signatory should not be valid without a relationship or position" do
    @signatory.relationship_or_position = nil
    assert_not @signatory.valid?, "Signatory valid without relationship or position"
  end

  test "signatory should not be valid without identification number" do
    @signatory.identification_number = nil
    assert_not @signatory.valid?,"Signatory valid without identification number"
  end

  test "signatory should not be valid without identification type id" do
    @signatory.identification_type_id = nil
    assert_not @signatory.valid?, "Signatory valid without identification type id"
  end

  test "next of kin should not be valid without a bank account" do 
  @signatory.bank_account_id = nil
  assert_not @signatory.valid?,"Signatory valid without bank account"
  end
end
