class Meeting < ApplicationRecord
  belongs_to :city
  belongs_to :user
  belongs_to :interest
end
