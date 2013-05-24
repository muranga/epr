class AddSupervisorsToReport < ActiveRecord::Migration
  def change
    add_column :reports, :supervisor_id, :integer
    add_column :reports, :co_supervisor_id, :integer
  end
end
