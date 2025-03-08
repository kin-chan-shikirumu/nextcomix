class AddCirculationtotwentytwentyfiveToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :circulationtotwentytwentyfive, :integer
  end
end
