require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase

  def setup
    @employee = Employee.new(identification_type_id: identification_types(:one).id, department_id: departments(:one).id) 
  end

  test "employee should be valid" do 
    @employee.first_name = "enow"
    @employee.last_name ="mbi"
    @employee.address ="Bomaka,Buea"
    @employee.phone = "237 677941484"
    @employee.department_id = departments(:one).id
    @employee.identification_number = "12345667-45"
    @employee.identification_type_id = identification_types(:one).id
    @employee.email = "employee@flexbank.com"
    assert @employee.valid?, "Employee is not valid - #{@employee.errors.full_messages}"
  end

  test "employee should not be valid without first name" do 
    @employee.first_name = nil
    @employee.last_name ="mbi"
    @employee.address ="Bomaka,Buea"
    @employee.phone = "237 677941484"
    @employee.department_id = departments(:one).id
    @employee.identification_number = "12345667-45"
    @employee.identification_type_id = identification_types(:one).id
    @employee.email = "employee@flexbank.com"
    assert_not @employee.valid?,"Employee valid without first name !"
  end

  test "employee should not be valid without last name" do 
    @employee.first_name = "enow"
    @employee.last_name = nil
    @employee.address ="Bomaka,Buea"
    @employee.phone = "237 677941484"
    @employee.department_id = departments(:one).id
    @employee.identification_number = "12345667-45"
    @employee.identification_type_id = identification_types(:one).id
    @employee.email = "employee@flexbank.com"
    assert_not @employee.valid?,"Employee valid without last name !"
  end


  test "employee should not be valid without address" do 
    @employee.first_name = "enow"
    @employee.last_name = "mbi"
    @employee.address = nil 
    @employee.phone = "237 677941484"
    @employee.department_id = departments(:one).id
    @employee.identification_number = "12345667-45"
    @employee.identification_type_id = identification_types(:one).id
    @employee.email = "employee@flexbank.com"
    assert_not @employee.valid?,"Employee valid without address"
  end


  test "employee should not be valid without phone number" do 
    @employee.first_name = "enow"
    @employee.last_name = "mbi"
    @employee.address = "Bomaka,Buea"
    @employee.phone = nil
    @employee.department_id = departments(:one).id
    @employee.identification_number = "12345667-45"
    @employee.identification_type_id = identification_types(:one).id
    @employee.email = "employee@flexbank.com"
    assert_not @employee.valid?,"Employee valid without address"
  end


  test "employee should not be valid without identification number" do
    @employee.first_name = "enow"
    @employee.last_name ="mbi"
    @employee.address ="Bomaka,Buea"
    @employee.phone = "237 677941484"
    @employee.department_id = departments(:one).id
    @employee.identification_number = nil 
    @employee.identification_type_id = identification_types(:one).id
    @employee.email = "employee@flexbank.com"
    assert_not @employee.valid?,"Employee valid without identification number"
  end


  test "employee should not be valid without department id" do
    @employee.first_name = "enow"
    @employee.last_name ="mbi"
    @employee.address ="Bomaka,Buea"
    @employee.phone = "237 677941484"
    @employee.department_id = nil
    @employee.identification_number = "12345667-45"
    @employee.identification_type_id = identification_types(:one).id
    assert_not @employee.valid?, "Employee valid without department id"
  end


  test "employee should not be valid without identification type id" do
    @employee.first_name = "enow"
    @employee.last_name ="mbi"
    @employee.address ="Bomaka,Buea"
    @employee.phone = "237 677941484"
    @employee.department_id = departments(:one).id
    @employee.identification_number = "12345667-45"
    @employee.identification_type_id = nil
    assert_not @employee.valid?, "Employee valid without identification type id"
  end


  test "employee should not be valid without email" do 
    @employee.first_name = "enow"
    @employee.last_name ="mbi"
    @employee.address ="Bomaka,Buea"
    @employee.phone = "237 677941484"
    @employee.department_id = departments(:one).id
    @employee.identification_number = "12345667-45"
    @employee.identification_type_id = identification_types(:one).id
    @employee.email = nil
    assert_not @employee.valid?, "Employee valid without email"
  end 

end

