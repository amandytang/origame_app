# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

Design.destroy_all
d1 = Design.create :name => 'Bottle and Cork', :difficulty => 'Advanced', :instructions => 'http://jonakashima.com.br/2017/06/23/origami-bottle-v2-cork/', :image => 'https://i.imgur.com/e9GHYC0.jpg', :creator_id => 5
d2 = Design.create :name => 'Potted Flowers', :difficulty => 'Intermediate', :instructions => 'http://jonakashima.com.br/2016/10/19/origami-flowers/', :image => 'https://i.imgur.com/FQbAvBU.jpg', :creator_id => 5


Creator.destroy_all
c1 = Creator.create :name => 'Jo Nakashima', :nationality => 'Brazilian/Japanese', :website => 'http://jonakashima.com.br/'

c1.designs << d1
