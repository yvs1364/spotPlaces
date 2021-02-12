class SpotsVtt < ApplicationRecord
  reverse_geocoded_by :latitude, :longitude
  validates :name, :start, :difficulty, :city, :distance, :alt_min, :alt_max, :elevation_gain, :latitude, :longitude, presence: true
end
