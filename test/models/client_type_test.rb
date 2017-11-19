require 'test_helper'

class ClientTypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @client_type = ClientType.new 
  end

  test "client type should be valid" do 
    @client_type.name = "my name"
    @client_type.description = "my description"
    assert @client_type.valid?,"client type not valid - #{@client_type.errors.full_messages}"
  end

  test "client type should not be valid without name" do 
    @client_type.name = nil
    @client_type.description = "my description"
    assert_not @client_type.valid?,"client type is valid without name"
  end

  test "client type should not be valid without description" do 
    @client_type.description = nil
    @client_type.name = "my name"
    assert_not @client_type.valid?,"client type is valid without description"
  end
end
