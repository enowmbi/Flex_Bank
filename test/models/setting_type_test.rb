require 'test_helper'

class SettingTypeTest < ActiveSupport::TestCase

  setup do 
    @setting_type = setting_types(:one)
  end

  test "setting type should be valid" do 
    assert @setting_type.valid?,"Setting type is not valid - {@setting_type.errors.full_messages}"
  end

  test "setting type should not be valid without name" do 
    @setting_type.name = nil
    assert_not @setting_type.valid?,"Setting type is valid without a name"
  end

  test "setting type should not be valid without description" do 
    @setting_type.description = nil
    assert_not @setting_type.valid?,"Setting type is valid without a description"
  end
end
