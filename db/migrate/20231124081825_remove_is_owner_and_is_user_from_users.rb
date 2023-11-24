class RemoveIsOwnerAndIsUserFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_column :users, :is_owner, :boolean
    remove_column :users, :is_user, :boolean
  end
end
