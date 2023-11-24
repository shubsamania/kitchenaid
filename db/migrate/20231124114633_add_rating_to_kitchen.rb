class AddRatingToKitchen < ActiveRecord::Migration[7.1]
  def change
    add_column :kitchens, :rating, :integer
  end
end
