class CreateParkAssets < ActiveRecord::Migration[7.1]
  def change
    create_table :park_assets do |t|
      t.string :assetclass
      t.integer :parkid
      t.string :assettype
      t.string :assetsize

      t.timestamps
    end
  end
end
