class AddSetIdToFollowers < ActiveRecord::Migration[5.2]
  def up
    add_reference :followers, :user, null: false, index: true
  end

  def down
    remove_reference :followers, index: true
  end
end
