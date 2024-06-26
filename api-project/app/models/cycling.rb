class Cycling < ApplicationRecord
  validates :cycling_id, :length, :location, presence: true
end
