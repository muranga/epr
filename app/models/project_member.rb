class ProjectMember < ActiveRecord::Base
  attr_accessible  :email, :name
  belongs_to :project
end
