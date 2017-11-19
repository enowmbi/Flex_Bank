require 'test_helper'

class SettingTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @setting_type = setting_types(:one)
  end

  test "should get index" do
    get setting_types_url
    assert_response :success
  end

  test "should get new" do
    get new_setting_type_url
    assert_response :success
  end

  test "should create setting_type" do
    assert_difference('SettingType.count') do
      post setting_types_url, params: { setting_type: { description: @setting_type.description, name: @setting_type.name } }
    end

    assert_redirected_to setting_type_url(SettingType.last)
  end

  test "should show setting_type" do
    get setting_type_url(@setting_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_setting_type_url(@setting_type)
    assert_response :success
  end

  test "should update setting_type" do
    patch setting_type_url(@setting_type), params: { setting_type: { description: @setting_type.description, name: @setting_type.name } }
    assert_redirected_to setting_type_url(@setting_type)
  end

  test "should destroy setting_type" do
    assert_difference('SettingType.count', -1) do
      delete setting_type_url(@setting_type)
    end

    assert_redirected_to setting_types_url
  end
end
