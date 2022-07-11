# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
# require "securerandom"

csv_file =  'csv/netflix_titles.csv'

CSV.foreach(csv_file, headers: :first_row, header_converters: :symbol) do |row|


  Movie.create(title: row[:title], genre: row[:type], year: row[:release_year].to_i, country: row[:country],
               published_at: row[:date_added], description: row[:description].strip)
end
