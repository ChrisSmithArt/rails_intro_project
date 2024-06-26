class RemoveParkidFromParkAssets < ActiveRecord::Migration[7.1]
  def change
    remove_column :park_assets, :parkid, :integer
  end
end
