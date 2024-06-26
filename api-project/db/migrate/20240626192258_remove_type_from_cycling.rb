class RemoveTypeFromCycling < ActiveRecord::Migration[7.1]
  def change
    remove_column :cyclings, :type, :string
  end
end
