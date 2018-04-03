class DesignRating < ApplicationRecord
  belongs_to :design, :optional => true
  belongs_to :user, :optional => true
 	validates_uniqueness_of :design_id, scope: :user_id
end
