class CreateNexts < ActiveRecord::Migration[5.1]
  def change
    create_table :nexts do |t|
      t.string :connection

      t.timestamps
    end
  end
end
