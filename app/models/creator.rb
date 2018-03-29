# == Schema Information
#
# Table name: creators
#
#  id          :integer          not null, primary key
#  name        :text
#  image       :text
#  nationality :text
#  website     :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Creator < ApplicationRecord
  has_many :designs
end
