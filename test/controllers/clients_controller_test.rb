require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get clients_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post clients_url, params: { client: { address: @client.address, city: @client.city, client_type_id: @client.client_type_id, email: @client.email, first_name: @client.first_name, identification_number: @client.identification_number, identification_type_id: @client.identification_type_id, last_name: @client.last_name, middle_name: @client.middle_name, phone: @client.phone } }
    end

    assert_redirected_to client_url(Client.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { address: @client.address, city: @client.city, client_type_id: @client.client_type_id, email: @client.email, first_name: @client.first_name, identification_number: @client.identification_number, identification_type_id: @client.identification_type_id, last_name: @client.last_name, middle_name: @client.middle_name, phone: @client.phone } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clients_url
  end
end
