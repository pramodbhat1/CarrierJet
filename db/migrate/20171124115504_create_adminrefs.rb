class CreateAdminrefs < ActiveRecord::Migration[5.1]
  def change
    create_table :adminrefs do |t|
      t.string :name
      t.string :company
      t.integer :referealid
      t.string :Location
      t.integer :Experince_in_year
      t.string :technology

      t.timestamps
    end
  end
end
