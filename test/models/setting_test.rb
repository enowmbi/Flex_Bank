require 'test_helper'

class SettingTest < ActiveSupport::TestCase

  setup do 
    @setting = settings(:one)
  end

  test "setting should be valid" do 
    assert @setting.valid?,"Setting is not valid - {@setting.errors.full_messages}"
  end

  test "setting should not be valid without name" do 
    @setting.name = nil
    assert_not @setting.valid?,"Setting is valid without a name"
  end
  test "setting should not be valid without value" do 
    @setting.value = nil
    assert_not @setting.valid?,"Setting is valid without a value"
  end
  test "setting should not be valid without description" do 
    @setting.description = nil
    assert_not @setting.valid?,"Setting is valid without a description"
  end
  test "setting should not be valid without organization" do 
    @setting.organization_id = nil
    assert_not @setting.valid?,"Setting is valid without a name"
  end
  test "setting should not be valid without setting type" do 
    @setting.setting_type_id = nil
    assert_not @setting.valid?,"Setting is valid without a setting type"
  end
end
