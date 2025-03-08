class AddCirculationtotwothousandToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :circulationtotwothousand, :integer
  end
end
