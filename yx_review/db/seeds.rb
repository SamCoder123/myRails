# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
local_path = "/Applications/Rails/yx_review/db/items.json"
records = JSON.parse(File.read(local_path))
records.each do |record|
  Review.create!(title: record['title'],
    cover_image: record['cover_image'],
    summary: record['summary'],
    score: record['score'])
end