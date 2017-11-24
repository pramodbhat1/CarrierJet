class CreateAdminrrefernces < ActiveRecord::Migration[5.1]
  def change
    create_table :adminrrefernces do |t|

      t.timestamps
    end
  end
end
