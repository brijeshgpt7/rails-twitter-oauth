class RenameColumnFromUsers < ActiveRecord::Migration
  def change
    rename_column :users, :access_token_key, :access_token
  end
end
