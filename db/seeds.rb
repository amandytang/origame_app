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
d6 = Design.create :name => 'Ghost'
d7 = Design.create :name => 'Origami Sphere', :difficulty => 'Beginner', :image => 'https://i.imgur.com/ZfgHlKu.png', :instructions => 'http://mitani.cs.tsukuba.ac.jp/en/cp_download.html'
d8 = Design.create :name => 'A3 Rose', :difficulty => 'Advanced', :image => 'https://i.imgur.com/gNaq4aa.png', :instructions => 'http://www.langorigami.com/crease-pattern/a3-rose-opus-718'
d9 = Design.create :name => 'Kangaroo', :difficulty => 'Advanced', :image => 'https://i.imgur.com/BV6HG77.png', :instructions => 'https://www.youtube.com/watch?v=7CVs_tuIQCU'
d10 = Design.create :name => 'Navel Shell', :difficulty => 'Intermediate', :image => 'https://i.imgur.com/wNi7PD0.png', :instructions => 'https://www.youtube.com/watch?v=-n1K_gKP_7Q'
d11 = Design.create :name => 'Horseman', :difficulty => 'Advanced', :image => 'https://i.imgur.com/GnYkFiG.png'

Creator.destroy_all
c1 = Creator.create :name => 'Jo Nakashima', :nationality => 'Brazilian/Japanese', :website => 'http://jonakashima.com.br/', :image => 'https://i.imgur.com/XF9UqPA.jpg'
c2 = Creator.create :name => 'Michael LaFosse', :nationality => 'American', :website => 'http://www.origamido.com/', :image => 'https://i.imgur.com/hcsvNQC.jpg'
c3 = Creator.create :name => 'Fumiaki Kawahata', :nationality => 'Japanese', :image => 'https://i.imgur.com/NGQFZbf.jpg'
c4 = Creator.create :name => 'Unknown'
c5 = Creator.create :name => 'Jun Mitani', :nationality => 'Japanese', :website => 'http://mitani.cs.tsukuba.ac.jp/en/', :image => 'https://i.imgur.com/ro1vQJ3.png'
c6 = Creator.create :name => 'Robert J. Lang', :nationality => 'American', :website => 'http://www.langorigami.com/', :image => 'https://i.imgur.com/NnNK7ug.jpg'
c7 = Creator.create :name => 'Peter Engel', :nationality => 'American', :image => 'https://i.imgur.com/DnZBYIw.png'
c8 = Creator.create :name => 'Tomoko Fuse', :nationality => 'Japanese', :image => 'https://i.imgur.com/yBdy0s3.png'
c9 = Creator.create :name => 'Satoshi Kamiya', :nationality => 'Japanese', :image => 'https://i.imgur.com/WFj0xhF.png'

DesignRating.destroy_all

DesignFavourite.destroy_all

c1.designs << d1
c1.designs << d2
c1.designs << d3
c2.designs << d5
c3.designs << d4
c5.designs << d7
c6.designs << d8
c7.designs << d9
c8.designs << d10
c9.designs << d11
