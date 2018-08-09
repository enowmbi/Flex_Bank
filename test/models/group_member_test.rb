require 'test_helper'

class GroupMemberTest < ActiveSupport::TestCase

  def setup
    @group_member = GroupMember.new(first_name: group_members(:one).first_name,last_name: group_members(:one).last_name,address: group_members(:one).address,phone: group_members(:one).phone,identification_number: group_members(:one).identification_number, email: group_members(:one).email, identification_type_id: identification_types(:one).id,city: clients(:one).city, client_id: clients(:one).id) 
  end

  test "group_member should be valid" do 
    assert @group_member.valid?, "Group member is not valid - #{@group_member.errors.full_messages}"
  end

  test "group_member should not be valid without first name" do 
    @group_member.first_name = nil
    assert_not @group_member.valid?,"Group member valid without first name !"
  end

  test "group_member should not be valid without last name" do 
    @group_member.last_name = nil
    assert_not @group_member.valid?,"Group member valid without last name !"
  end


  test "group_member should not be valid without address" do 
    @group_member.address = nil 
    assert_not @group_member.valid?,"Group member valid without address"
  end


  test "group_member should not be valid without phone number" do 
    @group_member.phone = nil
    assert_not @group_member.valid?,"Group member valid without address"
  end


  test "group_member should not be valid without identification number" do
    @group_member.identification_number = nil 
    assert_not @group_member.valid?,"Group member valid without identification number"
  end


  test "group_member should not be valid without client id" do
    @group_member.client_id = nil
    assert_not @group_member.valid?, "Group member valid without client id"
  end


  test "group_member should not be valid without identification type id" do
    @group_member.identification_type_id = nil
    assert_not @group_member.valid?, "Group member valid without identification type id"
  end


  test "group_member should not be valid without email" do 
    @group_member.email = nil
    assert_not @group_member.valid?, "Group member valid without email"
  end 

  test "group_member should not be valid without city" do 
    @group_member.city = nil
    assert_not @group_member.valid?,"Group member valid without city"
  end

end
