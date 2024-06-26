class ParkAsset < ApplicationRecord
  belongs_to :park
  validates :park_id, :assetclass, :assettype, presence: true
end
