class RemoveAcademicProgrammeFromProjectMember < ActiveRecord::Migration
  def up
    remove_column :project_members, :academic_programme_string
  end

  def down
    add_column :project_members, :academic_programme_string, :string
  end
end
