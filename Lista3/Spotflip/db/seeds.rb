# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

MusicStyle.create(name: "Rock")
MusicStyle.create(name: "Pop")
MusicStyle.create(name: "Sertanejo")
MusicStyle.create(name: "Funk")

Album.create(name: "Evolve", artist: "Imagine Dragons")

Music.create(name: "Thunder", explicit: false, album: Album.find_by_name("Evolve"), music_style: MusicStyle.find_by_name("Pop"))
Music.create(name: "Believer", explicit: false, album: Album.find_by_name("Evolve"), music_style: MusicStyle.find_by_name("Pop"))