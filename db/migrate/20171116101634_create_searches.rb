class CreateSearches < ActiveRecord::Migration[5.1]
  def change
    create_table :searches do |t|
      t.string :com
      t.text :tec
      t.integer :exp
      t.integer :ope

      t.timestamps
    end
  end
end
