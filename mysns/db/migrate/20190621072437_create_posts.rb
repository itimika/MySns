class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :content, limit: 150, null: false

      t.timestamps
    end
  end
end
