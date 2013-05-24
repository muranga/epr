class Review < ActiveRecord::Base
  attr_accessible :comment, :proposal_id, :status, :user_id
  belongs_to :user
  belongs_to :proposal
  validates :status , :presence => true
end
