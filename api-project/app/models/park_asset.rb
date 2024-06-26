class ParkAsset < ApplicationRecord
  belongs_to :park
  validates :park_id, :assetclass, :assetype, presence: true
end
