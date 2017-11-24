class AddTrackToRating < ActiveRecord::Migration[5.1]
  def change
    add_column :ratings, :track, :string
  end
end
