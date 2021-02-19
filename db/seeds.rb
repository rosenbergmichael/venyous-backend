# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

mt1 = User.create(name: "Mike T1", username: "Miketest1", password: "password") 
mt2 = User.create(name: "Mike T2", username: "Miketest2", password: "password") 


tv = mt1.venues.create(name: "The Test Hotel", image: "tbd", location: "Test, NY", esttotal: 0)
tv2 = mt2.venues.create(name: "The Second Test Hotel", image: "tbd", location: "Test2, NY", esttotal: 0)


tvinfo = tv.infos.create(capacity: 160, dates: "11/4/21, 12/12/21", rentalfee: 0, ceremonyfee: 150, perperson: 50, otherpp: 80, notes: "All Kosher baby! ")
tvinfo2 = tv2.infos.create(capacity: 250, dates: "11/28/21, 12/5/21", rentalfee: 8000, ceremonyfee: 0, perperson: 150, otherpp: 80, notes: "Half Kosher")