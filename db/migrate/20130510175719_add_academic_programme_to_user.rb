class AddAcademicProgrammeToUser < ActiveRecord::Migration
  def change
    add_column :users, :academic_programme, :string
  end
end
