class AddVoteVolumeToComments < ActiveRecord::Migration[7.2]
  def change
    add_column :comments, :vote_volume, :integer
  end
end
