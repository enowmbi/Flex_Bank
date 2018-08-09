require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  setup do 
    @organization = organizations(:one)
  end

  test "organization should be valid" do 
    assert @organization.valid?,"Organization is not valid - #{@organization.errors.full_messages}"
  end

  test "organization should not be valid without a name" do 
    @organization.name = nil
    assert_not @organization.valid?,"Organization is not valid without a name"
  end

  test "organization should not be valid without an address" do 
    @organization.address = nil
    assert_not @organization.valid?,"Organization is not valid without an address"
  end

  test "organization should not be valid without a phone number" do 
    @organization.phone = nil
    assert_not @organization.valid?,"Organization is not valid without a phone"
  end

  test "organization should not be valid without a email" do 
    @organization.email = nil
    assert_not @organization.valid?,"Organization is not valid without a email"
  end

end
