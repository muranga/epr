class Report < ActiveRecord::Base
  attr_accessible :abstract, :document, :project_id, :status, :title, :user_id
  belongs_to :user
  belongs_to :project
  validates :title , :presence => true
  validates :abstract , :presence => true
  validates :document , :presence => true
  mount_uploader :document, ProposalUploader
end
