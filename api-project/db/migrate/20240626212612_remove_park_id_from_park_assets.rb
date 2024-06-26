class RemoveParkIdFromParkAssets < ActiveRecord::Migration[7.1]
  def change
    remove_column :park_assets, :park_id, :integer
  end
end
