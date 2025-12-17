class AddDiaryDateToDiaries < ActiveRecord::Migration[8.0]
  def change
    add_column :diaries, :diary_date, :date
  end
end
