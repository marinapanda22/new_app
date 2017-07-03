class Post < ApplicationRecord
  belongs_to :user
  has_many :notices, dependent: :destroy
  mount_uploader :image, ImageUploader
end
