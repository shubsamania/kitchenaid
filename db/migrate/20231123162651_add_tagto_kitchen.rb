class AddTagtoKitchen < ActiveRecord::Migration[7.1]
  def change
    add_column :kitchens, :tag, :string
  end
end
