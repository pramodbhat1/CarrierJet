class CreateNewloginpages < ActiveRecord::Migration[5.1]
  def change
    create_table :newloginpages do |t|

      t.timestamps
    end
  end
end
