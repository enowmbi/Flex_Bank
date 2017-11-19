require 'test_helper'

class IdentificationTypeTest < ActiveSupport::TestCase
  
  def setup
    @identification_type = IdentificationType.new
  end
  
  

  test "identification type should not be valid without name" do
    @identification_type.name = nil
    @identification_type.description = "description"
    assert_not @identification_type.valid?, "identification type valid without name"
  end

  test "identification type should not be valid without description" do 
    @identification_type.name = "id name"
    @identification_type.description = nil
    assert_not @identification_type.valid?, "identification type valid without description"
  end
end
