require 'test_helper'

class OnlyAdminCanManagePeopleTest < ActionDispatch::IntegrationTest
  
  
  test "only_admin_can_edit_person" do
    create_person
    visit logout_path
    visit edit_person_path
    assert page.has_content?("Unauthorized Access")
  end
  
end
