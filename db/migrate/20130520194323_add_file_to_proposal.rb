class AddFileToProposal < ActiveRecord::Migration
  def change
    add_column :proposals, :document, :string
  end
end
