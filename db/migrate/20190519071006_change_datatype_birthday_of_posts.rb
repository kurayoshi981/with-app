class ChangeDatatypeBirthdayOfPosts < ActiveRecord::Migration[5.2]
  def change
    change_column :posts, :birthday, :date
  end
end
