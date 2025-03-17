class AddAuthorToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :author, :string
  end
end
