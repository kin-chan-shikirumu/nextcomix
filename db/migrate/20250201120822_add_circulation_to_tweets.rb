class AddCirculationToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :circulation, :string
  end
end
