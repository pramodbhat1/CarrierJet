class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :com
      t.text :tec
      t.integer :exp
      t.integer :ope
      t.integer :pkg

      t.timestamps
    end
  end
end
