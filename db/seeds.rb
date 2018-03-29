# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
u1 = User.create :email => 'mandy@ga.co'

Design.destroy_all
d1 = Design.create :name => 'Bottle and Cork', :difficulty => 4, :instructions => 'http://jonakashima.com.br/2017/06/23/origami-bottle-v2-cork/'

Creator.destroy_all
c1 = Creator.create :name => 'Jo Nakashima', :nationality => 'Brazilian/Japanese', :website => 'http://jonakashima.com.br/'

c1.designs << d1
