class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.integer :user_id, index: true
      t.integer :course_id, index: true

      t.timestamps
    end
  end
end
