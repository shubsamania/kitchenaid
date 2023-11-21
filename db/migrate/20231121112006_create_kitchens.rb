class CreateKitchens < ActiveRecord::Migration[7.1]
  def change
    create_table :kitchens do |t|
      t.string :name
      t.integer :price
      t.boolean :availiability
      t.date :start_date
      t.date :end_date
      t.text :description
      t.references :user, null: false, foreign_key: true


      t.timestamps
    end
  end
end
