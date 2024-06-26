class AddParkIdToParks < ActiveRecord::Migration[7.1]
  def change
    add_column :parks, :park_id, :integer
  end
end
