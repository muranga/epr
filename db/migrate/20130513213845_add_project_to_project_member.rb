class AddProjectToProjectMember < ActiveRecord::Migration
  def change
    add_column :project_members, :project_id, :integer
  end
end
