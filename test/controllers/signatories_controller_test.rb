require 'test_helper'

class SignatoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @signatory = signatories(:one)
  end

  test "should get index" do
    get client_bank_account_signatories_url @signatory.bank_account.client_id,@signatory.bank_account_id
    assert_response :success
  end

  test "should get new" do
    get new_client_bank_account_signatory_url @signatory.bank_account.client_id,@signatory.bank_account_id,@signatory
    assert_response :success
  end

  test "should create signatory" do
    assert_difference('Signatory.count') do
      post client_bank_account_signatories_url @signatory.bank_account.client_id,@signatory.bank_account_id, params: { signatory: { address: @signatory.address, bank_account_id: @signatory.bank_account_id, email: @signatory.email, city: @signatory.city, first_name: @signatory.first_name, identification_number: @signatory.identification_number, identification_type_id: @signatory.identification_type_id, last_name: @signatory.last_name, major_signatory: @signatory.major_signatory, middle_name: @signatory.middle_name, phone: @signatory.phone, relationship_or_position: @signatory.relationship_or_position } }
    end

    assert_redirected_to client_bank_account_signatory_url(@signatory.bank_account.client_id,@signatory.bank_account_id,Signatory.last)
  end

  test "should show signatory" do
    get client_bank_account_signatory_url(@signatory.bank_account.client_id,@signatory.bank_account_id,@signatory)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_bank_account_signatory_url(@signatory.bank_account.client_id,@signatory.bank_account_id,@signatory)
    assert_response :success
  end

  test "should update signatory" do
    patch client_bank_account_signatory_url(@signatory.bank_account.client_id,@signatory.bank_account_id,@signatory), params: { signatory: { address: @signatory.address, bank_account_id: @signatory.bank_account_id, email: @signatory.email,city: @signatory.city, first_name: @signatory.first_name, identification_number: @signatory.identification_number, identification_type_id: @signatory.identification_type_id, last_name: @signatory.last_name, major_signatory: @signatory.major_signatory, middle_name: @signatory.middle_name, phone: @signatory.phone, relationship_or_position: @signatory.relationship_or_position } }
    assert_redirected_to client_bank_account_signatory_url(@signatory.bank_account.client_id,@signatory.bank_account_id,@signatory)
  end

  test "should destroy signatory" do
    assert_difference('Signatory.count', -1) do
      delete client_bank_account_signatory_url(@signatory.bank_account.client_id,@signatory.bank_account_id,@signatory)
    end

    assert_redirected_to client_bank_account_signatories_url @signatory.bank_account.client_id,@signatory.bank_account_id
  end
end
