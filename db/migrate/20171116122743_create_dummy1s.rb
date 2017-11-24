class CreateDummy1s < ActiveRecord::Migration[5.1]
  def change
    create_table :dummy1s do |t|

      t.timestamps
    end
  end
end
