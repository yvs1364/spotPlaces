class CreateSpotsVtts < ActiveRecord::Migration[6.0]
  def change
    create_table :spots_vtts do |t|
      t.string :name
      t.string :start
      t.integer :alt_max
      t.integer :alt_min
      t.float :distance
      t.string :difficulty
      t.string :city
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
