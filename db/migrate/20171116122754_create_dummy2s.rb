class CreateDummy2s < ActiveRecord::Migration[5.1]
  def change
    create_table :dummy2s do |t|

      t.timestamps
    end
  end
end
