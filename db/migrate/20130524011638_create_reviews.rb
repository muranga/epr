class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :proposal_id
      t.integer :user_id
      t.text :comment
      t.string :status

      t.timestamps
    end
  end
end
