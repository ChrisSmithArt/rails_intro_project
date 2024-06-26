class AddParkIdToParkAssets < ActiveRecord::Migration[7.1]
  def change
    add_column :park_assets, :park_id, :integer
  end
end
