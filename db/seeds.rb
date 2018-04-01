# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

Design.destroy_all
d1 = Design.create :name => 'Bottle and Cork', :difficulty => 'Advanced', :instructions => 'http://jonakashima.com.br/2017/06/23/origami-bottle-v2-cork/', :image => 'https://i.imgur.com/e9GHYC0.jpg'
d2 = Design.create :name => 'Potted Flowers', :difficulty => 'Intermediate', :instructions => 'http://jonakashima.com.br/2016/10/19/origami-flowers/', :image => 'https://i.imgur.com/FQbAvBU.jpg'
d3 = Design.create :name => 'Penguin', :difficulty => 'Beginner', :instructions => 'http://jonakashima.com.br/2015/07/13/origami-penguin/', :image => 'https://i.imgur.com/lF3wKbL.jpg'
d4 = Design.create :name => 'Elephant', :difficulty => 'Beginner', :instructions => 'https://www.youtube.com/watch?v=InIpbaPdA54&t=5s', :image => 'https://i.imgur.com/okKPk3l.jpg'
d5 = Design.create :name => "VOG's Butterfly", :difficulty => 'Beginner', :image => 'https://i.imgur.com/RgszVTP.jpg'
d6 = Design.create :name => "Ghost"

Creator.destroy_all
c1 = Creator.create :name => 'Jo Nakashima', :nationality => 'Brazilian/Japanese', :website => 'http://jonakashima.com.br/', :image => 'https://i.imgur.com/XF9UqPA.jpg'
c2 = Creator.create :name => 'Michael LaFosse', :nationality => 'American', :website => 'http://www.origamido.com/', :image => 'https://i.imgur.com/hcsvNQC.jpg'
c3 = Creator.create :name => 'Fumiaki Kawahata', :nationality => 'Japanese', :image => 'https://i.imgur.com/NGQFZbf.jpg'
c4 = Creator.create :name => 'Unknown' 

c1.designs << d1
c1.designs << d2
c1.designs << d3
c2.designs << d5
c3.designs << d4
