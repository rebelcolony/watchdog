class Person < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates_presence_of :name, :description
end
