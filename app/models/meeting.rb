class Meeting < ApplicationRecord
  belongs_to :city
  belongs_to :user
  belongs_to :interest
  has_many :comments
  has_and_belongs_to_many :users

  validates :title, :presence => true
  mount_uploader :image, ImageUploader
  searchkick language: 'russian'
end
