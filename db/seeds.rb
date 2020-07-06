# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts"destroying the seeds..."
User.destroy_all
Video.destroy_all


User.new(email: "flavio@gmail.com", password: '123456')
User.new(email: "mahoney@gmail.com", password: '123456')

first_video = Video.new(name: "Crazy Video", url: "https://d2zihajmogu5jn.cloudfront.net/bipbop-advanced/bipbop_16x9_variant.m3u8")
second_video = Video.new(name: "Example Video", url: "https://example.com/index.m3u8")

first_video.save
second_video.save

puts"seeds destroyed. Creating new seeds..."
