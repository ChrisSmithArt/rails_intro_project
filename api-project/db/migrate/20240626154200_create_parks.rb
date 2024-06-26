class CreateParks < ActiveRecord::Migration[7.1]
  def change
    create_table :parks do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :category
      t.decimal :totalarea

      t.timestamps
    end
  end
end
