class AddVolumeToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :volume, :integer
  end
end
