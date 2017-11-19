require 'test_helper'

class DepartmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup 
    @department = Department.new
  end

  test "department should be valid" do 
    @department.name = "my department"
    @department.description = "my description"
    assert @department.valid?,"department valid without name and description"
  end

  test "department should not be valid without name" do 
    @department.name = nil
    @department.description = "my description"
    assert_not @department.valid?,"department valid without name"
  end

  test "department should not be valid without description" do 
    @department.name = "my department"
    @department.description = nil
    assert_not @department.valid?,"department valid without description"
  end
end
