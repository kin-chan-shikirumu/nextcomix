class AddAppToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :app, :text
  end
end
