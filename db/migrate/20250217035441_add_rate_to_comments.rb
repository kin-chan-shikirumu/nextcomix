class AddRateToComments < ActiveRecord::Migration[7.2]
  def change
    add_column :comments, :rate, :float
  end
end
