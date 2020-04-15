# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# require 'faker'

# 10.times do
#     User.create(name Faker::Name.name, Faker::)
# end
Post.destroy_all
Tag.destroy_all
PostTag.destroy_all
User.destroy_all

p1 = Post.create(title: "curl", content: "conditioning")
p2 = Post.create(title: "hair", content: "conditioning")


t1 = Tag.create(name: "#curl")
t2 = Tag.create(name: "#hair")
t3 = Tag.create(name: "#awosome")
t4 = Tag.create(name: "#conditioned")
t5 = Tag.create(name: "#conditioning")
t6 = Tag.create(name: "#style ")
t7 = Tag.create(name: "#conditioning")

pt1 = PostTag.create(post_id: p1.id, tag_id: t1.id)
pt2 = PostTag.create(post_id: p2.id, tag_id: t2.id)
pt3 = PostTag.create(post_id: p1.id, tag_id: t3.id)
pt4 = PostTag.create(post_id: p1.id, tag_id: t2.id)
pt5 = PostTag.create(post_id: p1.id, tag_id: t4.id)
pt6 = PostTag.create(post_id: p1.id, tag_id: t7.id)
pt7 = PostTag.create(post_id: p1.id, tag_id: t6.id)

ann = User.create(name: "Ann", username:"ann1", password: "ann")
chine = User.create(name: "Chine", username:"chine1", password:"chine")
bob = User.create(name: "Bob", username: "bobbob", password: "badpassword")

# username Faker::UserName, 