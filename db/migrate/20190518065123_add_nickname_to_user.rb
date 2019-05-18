class AddNicknameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :nickname, :string, null: false, default: '', limit: 100
  end
end
