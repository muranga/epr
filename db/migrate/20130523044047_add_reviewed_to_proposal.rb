class AddReviewedToProposal < ActiveRecord::Migration
  def change
    add_column :proposals, :reviewed, :boolean
    add_column :proposals, :assigned, :boolean
  end
end
