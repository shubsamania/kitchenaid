class AddIsOwnerAndIsUserToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :is_owner, :boolean
    add_column :users, :is_user, :boolean
  end
end
