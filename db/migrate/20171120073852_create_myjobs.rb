class CreateMyjobs < ActiveRecord::Migration[5.1]
  def change
    create_table :myjobs do |t|
      t.string :company
      t.string :technology
      t.integer :experince
      t.integer :pakage
      t.string :Location

      t.timestamps
    end
  end
end
