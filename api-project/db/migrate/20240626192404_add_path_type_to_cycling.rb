class AddPathTypeToCycling < ActiveRecord::Migration[7.1]
  def change
    add_column :cyclings, :path_type, :string
  end
end
