class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :number_of_participants
      t.string :status

      t.timestamps
    end
  end
end
