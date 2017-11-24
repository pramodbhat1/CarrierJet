class RemoveOpeFromSearches < ActiveRecord::Migration[5.1]
  def change
    remove_column :searches, :Ope, :integer
  end
end
