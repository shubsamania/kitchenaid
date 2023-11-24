class RemoveReviewFromKitchen < ActiveRecord::Migration[7.1]
  def change
    remove_column :kitchens, :review, :string
  end
end
