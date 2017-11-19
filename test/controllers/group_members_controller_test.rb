require 'test_helper'

class GroupMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_member = group_members(:one)
  end

  test "should get index" do
    get group_members_url
    assert_response :success
  end

  test "should get new" do
    get new_group_member_url
    assert_response :success
  end

  test "should create group_member" do
    assert_difference('GroupMember.count') do
      post group_members_url, params: { group_member: { address: @group_member.address, client_id: @group_member.client_id, email: @group_member.email, first_name: @group_member.first_name, identification_number: @group_member.identification_number, identification_type_id: @group_member.identification_type_id, last_name: @group_member.last_name, middle_name: @group_member.middle_name, phone: @group_member.phone } }
      
    end
    assert_redirected_to group_member_url(GroupMember.last)
  end

  test "should show group_member" do
    get group_member_url(@group_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_member_url(@group_member)
    assert_response :success
  end

  test "should update group_member" do
    patch group_member_url(@group_member), params: { group_member: { address: @group_member.address, client_id: @group_member.client_id, email: @group_member.email, first_name: @group_member.first_name, identification_number: @group_member.identification_number, identification_type_id: @group_member.identification_type_id, last_name: @group_member.last_name, middle_name: @group_member.middle_name, phone: @group_member.phone } }
    assert_redirected_to group_member_url(@group_member)
  end

  test "should destroy group_member" do
    assert_difference('GroupMember.count', -1) do
      delete group_member_url(@group_member)
    end

    assert_redirected_to group_members_url
  end
end
