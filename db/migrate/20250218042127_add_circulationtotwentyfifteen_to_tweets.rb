class AddCirculationtotwentyfifteenToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :circulationtotwentyfifteen, :integer
  end
end
