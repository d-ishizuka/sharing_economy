class AddNicknameAndGenderToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nickname, :string, null: false
    add_column :users, :gender, :integer, null: false

    add_index :users, :nickname, unique: true
  end
end
