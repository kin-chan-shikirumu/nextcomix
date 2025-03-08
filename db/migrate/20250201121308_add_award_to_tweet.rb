class AddAwardToTweet < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :award, :string
  end
end
