class AddCirculationtotwentytenToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :circulationtotwentyten, :integer
  end
end
