class ProjectMember < ActiveRecord::Base
  attr_accessible :email, :name
  validates :email, :presence => true
  validates :name, :presence => true
  belongs_to :project
end
