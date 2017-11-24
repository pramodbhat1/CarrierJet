class CreateChatboxdemos < ActiveRecord::Migration[5.1]
  def change
    create_table :chatboxdemos do |t|

      t.timestamps
    end
  end
end
