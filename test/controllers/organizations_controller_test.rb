require 'test_helper'

class OrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization = organizations(:one)
  end

  test "should get index" do
    get organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_url
    assert_response :success
  end

  test "should create organization" do
    assert_difference('Organization.count') do
      post organizations_url, params: { organization: { address: @organization.address, city: @organization.city, cnps_number: @organization.cnps_number, email: @organization.email, motto: @organization.motto, name: @organization.name, parent_id: @organization.parent_id, phone: @organization.phone, tax_payers_number: @organization.tax_payers_number } }
    end

    assert_redirected_to organization_url(Organization.last)
  end

  test "should show organization" do
    get organization_url(@organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_url(@organization)
    assert_response :success
  end

  test "should update organization" do
    patch organization_url(@organization), params: { organization: { address: @organization.address, city: @organization.city, cnps_number: @organization.cnps_number, email: @organization.email, motto: @organization.motto, name: @organization.name, parent_id: @organization.parent_id, phone: @organization.phone, tax_payers_number: @organization.tax_payers_number } }
    assert_redirected_to organization_url(@organization)
  end

  test "should destroy organization" do
    assert_difference('Organization.count', -1) do
      delete organization_url(@organization)
    end

    assert_redirected_to organizations_url
  end
end
