# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

foobar = User.create(
	:email => "foo@bar.com",
	:password => "foobar",
	:password_confirmation => "foobar",
	:name => "foobar"  
)

bob = User.create(
	:email => "bob@example.com",
	:password => "foobar",
	:password_confirmation => "foobar",
	:name => "bob"  
)

bill = User.create(
	:email => "bill@example.com",
	:password => "foobar",
	:password_confirmation => "foobar",
	:name => "bill"  
)

restaurant1 = Restaurant.create(
	:name => "Home Cooking",
	:street => "1017 Hyde Street",
	:city => "San Francisco",
	:state => "CA",
	:user_id => foobar.id    
)

restaurant2 = Restaurant.create(
	:name => "DBC Meal",
	:street => "717 California Street",
	:city => "San Francisco",
	:state => "CA",
	:user_id => foobar.id    
)

rating1 = Review.create(
	:body => "I love home cooking",
	:restaurant_id => restaurant1.id,
	:user_id => foobar.id,
	:rating => 4  
)

rating2 = Review.create(
	:body => "I love home cooked meals",
	:restaurant_id => restaurant1.id,
	:user_id => bob.id,
	:rating => 5  
)

rating3 = Review.create(
	:body => "This does not taste like home cooking",
	:restaurant_id => restaurant1.id,
	:user_id => bill.id,
	:rating => 2  
)