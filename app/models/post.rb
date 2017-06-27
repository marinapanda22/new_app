class Post < ApplicationRecord
  belongs_to :user
  has_many :notices
  mount_uploader :image, ImageUploader
end
