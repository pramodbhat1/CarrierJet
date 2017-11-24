class CreateUserrefernces < ActiveRecord::Migration[5.1]
  def change
    create_table :userrefernces do |t|

      t.timestamps
    end
  end
end
