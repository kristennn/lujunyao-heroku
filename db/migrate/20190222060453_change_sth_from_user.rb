class ChangeSthFromUser < ActiveRecord::Migration[5.2]
  def change
    change_column_default :users, :email, from: false, to: true
    remove_index :users, :email
    add_index :users, :name, unique: true
  end
end
