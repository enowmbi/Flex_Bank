require 'test_helper'

class SignatoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @signatory = signatories(:one)
  end

  test "should get index" do
    get signatories_url
    assert_response :success
  end

  test "should get new" do
    get new_signatory_url
    assert_response :success
  end

  test "should create signatory" do
    assert_difference('Signatory.count') do
      post signatories_url, params: { signatory: { address: @signatory.address, bank_account_id: @signatory.bank_account_id, email: @signatory.email, first_name: @signatory.first_name, identification_number: @signatory.identification_number, identification_type_id: @signatory.identification_type_id, last_name: @signatory.last_name, major_signatory: @signatory.major_signatory, middle_name: @signatory.middle_name, phone: @signatory.phone, relationship_or_position: @signatory.relationship_or_position } }
    end

    assert_redirected_to signatory_url(Signatory.last)
  end

  test "should show signatory" do
    get signatory_url(@signatory)
    assert_response :success
  end

  test "should get edit" do
    get edit_signatory_url(@signatory)
    assert_response :success
  end

  test "should update signatory" do
    patch signatory_url(@signatory), params: { signatory: { address: @signatory.address, bank_account_id: @signatory.bank_account_id, email: @signatory.email, first_name: @signatory.first_name, identification_number: @signatory.identification_number, identification_type_id: @signatory.identification_type_id, last_name: @signatory.last_name, major_signatory: @signatory.major_signatory, middle_name: @signatory.middle_name, phone: @signatory.phone, relationship_or_position: @signatory.relationship_or_position } }
    assert_redirected_to signatory_url(@signatory)
  end

  test "should destroy signatory" do
    assert_difference('Signatory.count', -1) do
      delete signatory_url(@signatory)
    end

    assert_redirected_to signatories_url
  end
end
