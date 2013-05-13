class CreateProjectMembers < ActiveRecord::Migration
  def change
    create_table :project_members do |t|
      t.string :name
      t.string :email
      t.string :academic_programme_string

      t.timestamps
    end
  end
end
