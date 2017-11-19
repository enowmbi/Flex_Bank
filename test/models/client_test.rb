require 'test_helper'

class ClientTest < ActiveSupport::TestCase

  def setup 
    @client = Client.new 
  end

  test "client should not be valid without first name" do 
    @client.first_name = nil
    assert_not @client.valid?,"Client valid without first name !"
  end

  test "client should not be valid without last name " do
    @client.first_name = "enow"
    @client.last_name = nil
    assert_not @client.valid?,"Client valid without last name !"
  end

  test "client should not be valid without address" do 
    @client.first_name = "enow"
    @client.last_name = "mbi"
    @client.address = nil
    assert_not @client.valid?,"Client valid without address"
  end

  test "client should not be valid without phone number" do 
    @client.first_name ="enow"
    @client.last_name ="mbi"
    @client.address ="Bomaka,Buea"
    @client.phone = nil
    assert_not @client.valid?, "Client valid without phone number !"
  end

  test "client should not be valid without a client type id" do
    @client.first_name = "enow"
    @client.last_name ="mbi"
    @client.address ="Bomaka,Buea"
    @client.phone = "237 677941484"
    @client.client_type_id = nil
    assert_not @client.valid?, "Client valid without client type id"
  end

  test "client should not be valid without identification number" do
    @client.first_name = "enow"
    @client.last_name ="mbi"
    @client.address ="Bomaka,Buea"
    @client.phone = "237 677941484"
    @client.client_type_id = 1
    @client.identification_number = nil
    assert_not @client.valid?,"Client valid without identification number"
  end


  test "client should not be valid without identification type id" do
    @client.first_name = "enow"
    @client.last_name ="mbi"
    @client.address ="Bomaka,Buea"
    @client.phone = "237 677941484"
    @client.client_type_id = 1
    @client.identification_number = "12345667-45"
    @client.identification_type_id = nil
    assert_not @client.valid?, "Client valid without identification type id"
  end

end



