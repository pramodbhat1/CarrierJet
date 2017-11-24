class CreateFirstpages < ActiveRecord::Migration[5.1]
  def change
    create_table :firstpages do |t|

      t.timestamps
    end
  end
end
