class Proposal < ActiveRecord::Base
  attr_accessible :abstract, :project_id, :title, :user_id, :document, :document_cache
  validates :title, :presence => true
  validates :abstract, :presence => true
  validates :document, :presence => true
  belongs_to :user
  belongs_to :project
  mount_uploader :document, ProposalUploader
end
