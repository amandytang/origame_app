# == Schema Information
#
# Table name: designs
#
#  id           :integer          not null, primary key
#  name         :text
#  image        :text
#  instructions :text
#  difficulty   :integer
#  creator_id   :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Design < ApplicationRecord
  belongs_to :creator, :optional => true
end
