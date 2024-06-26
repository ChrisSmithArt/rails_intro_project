class Park < ApplicationRecord
  has_many :park_assets
  validates :location, :name, :totalarea, presence: true
end
