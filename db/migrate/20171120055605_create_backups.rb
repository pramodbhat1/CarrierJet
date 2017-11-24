class CreateBackups < ActiveRecord::Migration[5.1]
  def change
    create_table :backups do |t|

      t.timestamps
    end
  end
end
