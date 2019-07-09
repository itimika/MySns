class AddImageNameToUsers < ActiveRecord::Migration[5.2]
  def change
    execute 'DELETE FROM users';
    add_column :users, :image_name, :string, null: false
  end
end
