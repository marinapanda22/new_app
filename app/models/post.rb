class Post < ApplicationRecord
  paginates_per 6
  belongs_to :user
  has_many :notices, dependent: :destroy
  mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :image, presence: true
end
