class Walkway < ApplicationRecord
  validates :location, :length, presence: true
end
