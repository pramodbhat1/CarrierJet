class CreateFindjobs < ActiveRecord::Migration[5.1]
  def change
    create_table :findjobs do |t|
      t.text :tec
      t.integer :exp

      t.timestamps
    end
  end
end
