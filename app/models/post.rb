class Post < ApplicationRecord
  paginates_per 6
  belongs_to :user
  has_many :notices, dependent: :destroy
  mount_uploader :image, ImageUploader
end
