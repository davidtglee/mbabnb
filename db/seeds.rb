# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.new
u1.email = "abc@abc.com"
u1.password = "12341234"
u1.password_confirmation = "12341234"
u1.first_name="David"
u1.last_name="Lee"
u1.save

u2 = User.new
u2.email = "bbc@abc.com"
u2.password = "12341234"
u2.password_confirmation = "12341234"
u2.first_name="Bavid"
u2.last_name="Bee"
u2.save


puts "#{User.count} users in the database"

Listing.destroy_all
l1=Listing.new
l1.user_id=u1.id
l1.city="Chicago"
l1.neighborhood="Logan square"
l1.start_date=Date.parse ("2017/6/12")
l1.end_date=Date.parse("2017/9/12")
l1.bedrooms=2
l1.bathrooms=1
l1.shared=true
l1.price=1000
l1.save
print l1.errors.full_messages

puts "#{Listing.count} listings in the database"
