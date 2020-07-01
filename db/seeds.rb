# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts"destroying the seeds..."
User.destroy_all
Course.destroy_all
puts"seeds destroyed. Creating new seeds..."

User.new(email: "flavio@gmail.com", password: '123456')
User.new(email: "mahoney@gmail.com", password: '123456')

Course.new(name: "Crazy Video", url: "https://d2zihajmogu5jn.cloudfront.net/bipbop-advanced/bipbop_16x9_variant.m3u8")
Course.new(name: "Example Video", url: "https://example.com/index.m3u8")
