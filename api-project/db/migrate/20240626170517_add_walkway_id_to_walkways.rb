class AddWalkwayIdToWalkways < ActiveRecord::Migration[7.1]
  def change
    add_column :walkways, :walkway_id, :integer
  end
end
