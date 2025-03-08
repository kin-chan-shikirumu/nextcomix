class AddReaderIdToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :reader_id, :integer
  end
end
