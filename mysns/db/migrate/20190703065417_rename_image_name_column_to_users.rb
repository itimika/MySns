class RenameImageNameColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :image_name, :icon_image_name
  end
end
