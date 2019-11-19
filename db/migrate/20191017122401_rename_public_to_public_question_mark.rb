class RenamePublicToPublicQuestionMark < ActiveRecord::Migration[6.0]
  def change
    rename_column :entries, :public, :public?
  end
end
