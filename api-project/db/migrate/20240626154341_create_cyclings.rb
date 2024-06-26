class CreateCyclings < ActiveRecord::Migration[7.1]
  def change
    create_table :cyclings do |t|
      t.string :name
      t.string :type
      t.string :roadlocation
      t.boolean :twoway
      t.decimal :length
      t.string :location

      t.timestamps
    end
  end
end
