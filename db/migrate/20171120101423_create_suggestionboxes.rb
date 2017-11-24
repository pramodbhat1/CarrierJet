class CreateSuggestionboxes < ActiveRecord::Migration[5.1]
  def change
    create_table :suggestionboxes do |t|
      t.string :langvage
      t.string :bestcombination

      t.timestamps
    end
  end
end
