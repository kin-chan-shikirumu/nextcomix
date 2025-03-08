class AddToCirculationtotalToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :circulationtotal, :string
  end
end
