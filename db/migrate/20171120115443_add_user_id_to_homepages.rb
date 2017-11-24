class AddUserIdToHomepages < ActiveRecord::Migration[5.1]
  def change
    add_column :homepages, :userid, :integer
  end
end
