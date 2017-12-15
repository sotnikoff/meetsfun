class Meeting < ApplicationRecord
  belongs_to :city
  belongs_to :user
  belongs_to :interest

  validates :title, :presence => true
  mount_uploader :image, ImageUploader
  searchkick language: 'russian'
end
