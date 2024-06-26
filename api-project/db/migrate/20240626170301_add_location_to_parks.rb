class AddLocationToParks < ActiveRecord::Migration[7.1]
  def change
    add_column :parks, :location, :string
  end
end
