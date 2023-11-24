class AddReviewToKitchen < ActiveRecord::Migration[7.1]
  def change
    add_column :kitchens, :review, :string
  end
end
