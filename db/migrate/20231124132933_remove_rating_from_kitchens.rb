class RemoveRatingFromKitchens < ActiveRecord::Migration[7.1]
  def change
    remove_column :kitchens, :rating, :integer
  end
end
