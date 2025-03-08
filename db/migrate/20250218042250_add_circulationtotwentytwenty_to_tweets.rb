class AddCirculationtotwentytwentyToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :circulationtotwentytwenty, :integer
  end
end
