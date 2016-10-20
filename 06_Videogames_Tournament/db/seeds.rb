# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tournaments = Tournament.create([
  {name: "Mario Bross"},
  {name: "Tetris"},
  {name: "Sonic"},
  {name: "Fifa 2016"},
  {name: "Lemmings"}
  ])

players = Player.create([
  {name: "John"},
  {name: "Paul"},
  {name: "Mike"},
  {name: "Dave"},
  {name: "Thomas"}
])
