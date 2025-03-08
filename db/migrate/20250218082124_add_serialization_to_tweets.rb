class AddSerializationToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :serialization, :string
  end
end
