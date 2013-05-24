class RenameFileToDocumentInReport < ActiveRecord::Migration
  def up
    rename_column :reports, :file, :document
  end

  def down
    rename_column :reports, :document, :file
  end
end
