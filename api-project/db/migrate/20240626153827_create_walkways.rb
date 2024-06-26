class CreateWalkways < ActiveRecord::Migration[7.1]
  def change
    create_table :walkways do |t|
      t.decimal :length
      t.decimal :width
      t.string :location

      t.timestamps
    end
  end
end
