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
  has_many :design_favourites # Links design with the 'favourite' join model
  has_many :favourited_by, through: :design_favourites, source: :user # Specifying what is returned from the relationship
  has_many :design_ratings
  has_many :ratings, through: :design_ratings, source: :user
  accepts_nested_attributes_for :design_ratings

  def self.search(term)
  if term
    joins(:creator).where("creators.name ILIKE ? OR designs.name ILIKE ? OR designs.difficulty ILIKE ? ", "%#{term}%", "%#{term}%", "%#{term}%") 
  else
    all
  end
end

end
