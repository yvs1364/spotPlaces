# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'

file = File.read("#{Rails.root}/db/spotVtt.geojson")
vtt = JSON.parse(file)

# puts vtt["features"]["coordinates"]
vtt['features'].each do |line|
  lati = 0.0
  longi = 0.0
  line_alt_long = line["geometry"]["coordinates"]
  line_alt_long.each do |lat, long|
    longi = long[0]
    lati = lat[1]
   
  end

  spots_vtt = SpotsVtt.create!(
    name: line['properties']['NOM'],
    start: line['properties']['DEPART'],
    city: line['properties']['COMMUNE'],
    difficulty: line['properties']['DIFFICULTE'],
    distance: line['properties']['DISTANCE'],
    alt_min: line['properties']['ALT_DEP'],
    alt_max: line['properties']['ALT_MAXI'],
    elevation_gain: line['properties']['DENIVELE'],
    latitude: lati,
    longitude: longi
)
   puts "name: #{spots_vtt.name}"
end
