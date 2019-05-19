class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name, null: false, limit: 100
      t.text :profile, null: false, limit: 1000
      t.integer :birthday, null: false
      t.integer :age, null: false
      t.integer :sex, null: false
      t.string :job_type, null: false
      t.string :work_location, null: false
      t.string :skill, null: false
      t.string :employment_status, null: false
      t.integer :salary, null: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
