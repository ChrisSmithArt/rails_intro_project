class AddCyclingIdToCycling < ActiveRecord::Migration[7.1]
  def change
    add_column :cyclings, :cycling_id, :string
  end
end
