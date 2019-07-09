class CreateFollowers < ActiveRecord::Migration[5.2]
  def change
    create_table :followers do |t|
      t.bigint :follower_id, null: false
    end
  end
end
