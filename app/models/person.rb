class Person < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates_presence_of :name, :description
  validates_uniqueness_of :name
  belongs_to :category
end
