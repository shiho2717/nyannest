class CreateMeals < ActiveRecord::Migration[8.0]
  def change
    create_table :meals do |t|
      t.string :food_name
      t.float :feeding_amount
      t.float :eaten_amount
      t.datetime :feeding_time
      t.text :memo
      t.references :cat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
