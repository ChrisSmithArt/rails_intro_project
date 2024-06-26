class Walkway < ApplicationRecord
  validates :location, :length, :walkway_id, presence: true
end
