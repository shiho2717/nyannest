class CreatePreferences < ActiveRecord::Migration[8.0]
  def change
    create_table :preferences do |t|
      t.references :cat, null: false, foreign_key: true
      t.integer :category
      t.string :item_name
      t.integer :reaction
      t.text :memo

      t.timestamps
    end
  end
end
