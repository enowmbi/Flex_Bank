require 'test_helper'

class NextOfKinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @next_of_kin = next_of_kins(:one)
  end

  test "should get index" do
    get client_bank_account_next_of_kins_url @next_of_kin.bank_account.client_id,@next_of_kin.bank_account_id
    assert_response :success
  end

  test "should get new" do
    get new_client_bank_account_next_of_kin_url @next_of_kin.bank_account.client_id,@next_of_kin.bank_account_id,@next_of_kin
    assert_response :success
  end

  test "should create next_of_kin" do
    assert_difference('NextOfKin.count') do
      post client_bank_account_next_of_kins_url(@next_of_kin.bank_account.client_id,@next_of_kin.bank_account_id), params: { next_of_kin: { address: @next_of_kin.address, bank_account_id: @next_of_kin.bank_account_id, email: @next_of_kin.email,city: @next_of_kin.city, first_name: @next_of_kin.first_name, identification_number: @next_of_kin.identification_number, identification_type_id: @next_of_kin.identification_type_id, last_name: @next_of_kin.last_name, middle_name: @next_of_kin.middle_name, phone: @next_of_kin.phone, relationship: @next_of_kin.relationship } }
    end

    assert_redirected_to client_bank_account_next_of_kin_url(@next_of_kin.bank_account.client_id,@next_of_kin.bank_account_id,NextOfKin.last)
  end

  test "should show next_of_kin" do
    get client_bank_account_next_of_kin_url(@next_of_kin.bank_account.client_id,@next_of_kin.bank_account_id,@next_of_kin)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_bank_account_next_of_kin_url(@next_of_kin.bank_account.client_id,@next_of_kin.bank_account_id,@next_of_kin)
    assert_response :success
  end

  test "should update next_of_kin" do
    patch client_bank_account_next_of_kin_url(@next_of_kin.bank_account.client_id,@next_of_kin.bank_account_id,@next_of_kin), params: { next_of_kin: { address: @next_of_kin.address, bank_account_id: @next_of_kin.bank_account_id, email: @next_of_kin.email, city: @next_of_kin.city, first_name: @next_of_kin.first_name, identification_number: @next_of_kin.identification_number, identification_type_id: @next_of_kin.identification_type_id, last_name: @next_of_kin.last_name, middle_name: @next_of_kin.middle_name, phone: @next_of_kin.phone, relationship: @next_of_kin.relationship } }
    assert_redirected_to client_bank_account_next_of_kin_url(@next_of_kin.bank_account.client_id,@next_of_kin.bank_account_id,@next_of_kin)
  end

  test "should destroy next_of_kin" do
    assert_difference('NextOfKin.count', -1) do
      delete client_bank_account_next_of_kin_url(@next_of_kin.bank_account.client_id,@next_of_kin.bank_account_id,@next_of_kin)
    end

    assert_redirected_to client_bank_account_next_of_kins_url @next_of_kin.bank_account.client_id,@next_of_kin.bank_account_id
  end
end
