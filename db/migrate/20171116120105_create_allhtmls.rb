class CreateAllhtmls < ActiveRecord::Migration[5.1]
  def change
    create_table :allhtmls do |t|

      t.timestamps
    end
  end
end
