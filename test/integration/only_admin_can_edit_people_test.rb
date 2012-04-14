require 'test_helper'

class OnlyAdminCanManagePeopleTest < ActionDispatch::IntegrationTest
  
  test "only_admin_can_edit_person" do
    create_person
    visit logout_path
    visit('/people/1/edit')
    assert page.has_content?("Unauthorized Access")
  end
  
  test "only_admin_can_create_person" do
    visit('/people/new')
    assert page.has_content?("Unauthorized Access")
  end
  
  test "only_admin_can_create_person" do
    visit('/people/new')
    assert page.has_content?("Unauthorized Access")
  end
  
  
end
