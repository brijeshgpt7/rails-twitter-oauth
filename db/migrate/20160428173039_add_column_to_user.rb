class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :oauth_token_secret, :string
    add_column :users, :oauth_verifier, :string
    add_column :users, :oauth_token, :string
  end
end
