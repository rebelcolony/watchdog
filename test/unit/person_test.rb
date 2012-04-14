require 'test_helper'

class PersonTest < ActiveSupport::TestCase
   
  test "people attributes must not be blank" do
    assert_raise(ActiveRecord::RecordInvalid) {
      person = FactoryGirl.create(:person, :name => nil, :description => nil)
    }
  end
  
  test "should create successfully" do
    person = FactoryGirl.create(:person)
  end
  
  test "person is not valid without a unique name" do
    person = FactoryGirl.create(:person, name: "Stan Romanek")
    assert_raise(ActiveRecord::RecordInvalid) do
      person = FactoryGirl.create(:person, name: "Stan Romanek")
    end  
  end
  
  
end
