class CreateKitchens < ActiveRecord::Migration[7.1]
  def change
    create_table :kitchens do |t|
      t.string :name
      t.integer :price
      t.boolean :availiability
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
