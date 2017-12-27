class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :meeting

  validates :text, :presence => true
end
