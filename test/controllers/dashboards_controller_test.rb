require 'test_helper'

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url
    assert_response :success
  end

  test "should get client and bank accounts" do 
    get dashboards_client_and_bank_accounts_url
    assert_response :success
    assert_select "h1","Clients and Bank Accounts"
  end

  test "should get accounting and inventory" do
    get dashboards_accounting_and_inventory_url
    assert_response :success
    assert_select "h1","Accounting and Inventory"
  end

  test "should get communication and data" do 
    get dashboards_communication_and_data_url
    assert_response :success
    assert_select "h1","Communication and Data" 
  end

  test "should get financial reports" do 
    get dashboards_financial_reports_url
    assert_response :success
    assert_select "h1","Financial Reports"
  end

  test "should get human resource" do 
    get dashboards_human_resources_url
    assert_response :success
    assert_select "h1","Human Resources"
  end

  test "should get loans and term deposits" do 
    get dashboards_loans_and_term_deposits_url
    assert_response :success
    assert_select "h1","Loans and Term Deposits"
  end

  test "should get settings and configurations" do 
    get dashboards_settings_and_configurations_url
    assert_response :success
    assert_select "h1","Settings and Configurations"
  end

  test "should get user accounts" do 
    get dashboards_user_accounts_url
    assert_response :success
    assert_select "h1","User Accounts"
  end








end
