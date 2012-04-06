require 'test_helper'

class AdminCanLoginTest < ActionDispatch::IntegrationTest
  
  test "admin can login" do
    visit login_path
    assert page.has_selector?("input#password")
    fill_in "password", :with => "secret"
    click_on "Log in"
    assert page.has_content?("Sucessfully logged in")
  end
  
  test "without the correct password you can't login" do
    visit login_path
    fill_in "password", :with => "anything else"
    click_on "Log in"
    assert page.has_selector?("input#password")
    assert page.has_content?("Wrong password")
  end
  
  test "admin_can_logout" do
    sign_in_as_admin
    visit logout_path
    assert page.has_content?("Sucessfully logged out")
  end
  
end