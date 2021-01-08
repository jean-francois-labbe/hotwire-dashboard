# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  ['Metallica', 'trash metal'],
  ['Anthrax', 'thrash metal'],
  ['Megadeth', 'thrash metal'],
  ['Slayer', 'thrash metal'],
  ['Gojira', 'technical death metal'],
  ['Meshuggah', 'technical death metal'],
  ['Children of bodom', 'black metal'],
  ['Seth', 'black metal']
].each do |band_name, genre|
  Group.create(band_name: band_name, genre: genre)
end

10.times { |i| Import.create(name: "Import ##{i}") }
