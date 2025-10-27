class CreateCats < ActiveRecord::Migration[8.0]
  def change
    create_table :cats do |t|
      t.string :name
      t.date :birthday
      t.string :breed
      t.string :pattern
      t.integer :sex
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
