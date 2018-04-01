# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :text
#  email           :text
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :design_favourites # Just the relationships
  has_many :favourites, through: :design_favourites, source: :design # The actual design

end
