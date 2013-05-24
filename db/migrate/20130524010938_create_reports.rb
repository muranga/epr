class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :title
      t.text :abstract
      t.string :file
      t.string :status

      t.timestamps
    end
  end
end
