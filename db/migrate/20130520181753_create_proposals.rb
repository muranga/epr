class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :title
      t.text :abstract
      t.integer :user_id
      t.integer :project_id

      t.timestamps
    end
  end
end
