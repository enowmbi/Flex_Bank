require 'test_helper'

class GroupMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group_member = group_members(:two)
  end

  test "should get index" do
    get client_group_members_url @group_member.client_id
    assert_response :success
  end

  test "should get new" do
    get new_client_group_member_url @group_member.client_id, @group_member
    assert_response :success
  end

  test "should create group_member" do
    assert_difference('GroupMember.count') do
      post client_group_members_url @group_member.client_id, params: { group_member: { address: @group_member.address, client_id: @group_member.client_id, email: @group_member.email, city: @group_member.city, first_name: @group_member.first_name, identification_number: @group_member.identification_number, identification_type_id: @group_member.identification_type_id, last_name: @group_member.last_name, middle_name: @group_member.middle_name, phone: @group_member.phone } }
      
    end
    assert_redirected_to client_group_member_url(@group_member.client_id,GroupMember.last)
  end

  test "should show group_member" do
    get client_group_member_url(@group_member.client_id,@group_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_group_member_url(@group_member.client_id,@group_member)
    assert_response :success
  end

  test "should update group_member" do
    patch client_group_member_url(@group_member.client_id,@group_member), params: { group_member: { address: @group_member.address, client_id: @group_member.client_id, email: @group_member.email, city: @group_member.city, first_name: @group_member.first_name, identification_number: @group_member.identification_number, identification_type_id: @group_member.identification_type_id, last_name: @group_member.last_name, middle_name: @group_member.middle_name, phone: @group_member.phone } }
    assert_redirected_to client_group_member_url(@group_member.client_id,@group_member)
  end

  test "should destroy group_member" do
    assert_difference('GroupMember.count', -1) do
      delete client_group_member_url(@group_member.client_id,@group_member)
    end

    assert_redirected_to client_group_members_url @group_member.client_id
  end
end
