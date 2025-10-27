class AddDetailsToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :display_name, :string
    add_column :users, :birthday, :date
    add_column :users, :introduction, :text
  end
end
