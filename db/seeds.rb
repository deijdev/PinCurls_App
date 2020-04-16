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
Favorite.destroy_all

p1 = Post.create(title: "curl", content: "conditioning", img: "https://res.cloudinary.com/drpyvuhac/image/upload/v1587048890/easy-african-american-weaving-hairstyles_exqwor.jpg" )
p2 = Post.create(title: "hair", content: "conditioning", img: "https://res.cloudinary.com/drpyvuhac/image/upload/v1587048874/wedding-hairstyles-for-natural-black-hair-391731-wedding-hairstyles-for-natural-hair-of-wedding-hairstyles-for-natural-black-hair_pu19sk.jpg")
p3 = Post.create(title: "products", content: "shampoo", img: "https://res.cloudinary.com/drpyvuhac/image/upload/v1587048844/natural-black-hair-bride-02_dopvoc.jpg" )
p4 = Post.create(title: "hair style", content: "a lot", img: "https://res.cloudinary.com/drpyvuhac/image/upload/v1587048830/iStock-666675254-1080x675_aykq8j.jpg" )
p5 = Post.create(title: "natural", content: "beautiful" )
p6 = Post.create(title: "hair time", content: "5 minutes", img: "https://res.cloudinary.com/drpyvuhac/image/upload/v1587048711/14e44bed25b5140d31fb2b1cf4d791d9_wlfkcs.jpg")


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
beza = User.create(name: "Beza", username: "beza", password: "beza", img: "https://scontent-iad3-1.xx.fbcdn.net/v/t31.0-1/p160x160/13119764_1082320605164656_1741359669293481345_o.jpg?_nc_cat=103&_nc_sid=dbb9e7&_nc_ohc=zn1TK-fmlGgAX9gE_dX&_nc_ht=scontent-iad3-1.xx&_nc_tp=6&oh=9825f41000466037fca9870bfec7d58e&oe=5EBEE400")
beti = User.create(name: "Beti", username: "beti", password: "beti", img: "https://res.cloudinary.com/drpyvuhac/image/upload/v1587048557/052aeef657ac996d64204cf39c5ad510_dybtdy.jpg")

fp1= Favorite.create(user_id: ann.id , post_id: p2.id)
fp2= Favorite.create(user_id: ann.id,post_id: p1.id)
fp3= Favorite.create(user_id: chine.id , post_id: p3.id)
fp4= Favorite.create(user_id: bob.id,post_id: p1.id)
fp5= Favorite.create(user_id: chine.id,post_id: p5.id)
fp6= Favorite.create(user_id: bob.id , post_id: p4.id)
fp7= Favorite.create(user_id: bob.id,post_id: p6.id)
fp8= Favorite.create(user_id: beza.id , post_id: p4.id)
fp9= Favorite.create(user_id: beti.id,post_id: p6.id)

# username Faker::UserName, 