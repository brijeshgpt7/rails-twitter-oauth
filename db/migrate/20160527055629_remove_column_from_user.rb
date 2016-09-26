class RemoveColumnFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :oauth_token
    rename_column :users, :oauth_token_secret, :access_token_key
    rename_column :users, :oauth_verifier, :access_token_secret
  end
end
