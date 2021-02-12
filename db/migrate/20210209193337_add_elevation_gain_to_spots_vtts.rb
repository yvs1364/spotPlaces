# frozen_string_literal: true

class AddElevationGainToSpotsVtts < ActiveRecord::Migration[6.0]
  def change
    add_column :spots_vtts, :elevation_gain, :float
  end
end
