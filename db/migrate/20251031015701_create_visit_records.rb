class CreateVisitRecords < ActiveRecord::Migration[8.0]
  def change
    create_table :visit_records do |t|
      t.date :visit_date
      t.string :clinic_name
      t.integer :reason
      t.string :chief_complaint
      t.text :diagnosis
      t.text :treatment
      t.text :medication_notes
      t.float :weight_at_visit
      t.float :temperature_at_visit
      t.integer :cost
      t.date :next_visit_on
      t.text :memo
      t.references :cat, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
