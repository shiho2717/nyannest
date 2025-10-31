class CreateHealthLogs < ActiveRecord::Migration[8.0]
  def change
    create_table :health_logs do |t|
      t.float :weight
      t.integer :appetite
      t.float :water_intake
      t.integer :urination_count
      t.boolean :urine_abnormal
      t.text :urine_note
      t.integer :defecation_count
      t.boolean :stool_abnormal
      t.text :stool_note
      t.float :temperature
      t.boolean :overgrooming
      t.text :overgrooming_area
      t.integer :vomit_count
      t.text :vomit_condition
      t.references :cat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
