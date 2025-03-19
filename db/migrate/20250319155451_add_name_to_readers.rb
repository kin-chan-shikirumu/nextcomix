class AddNameToReaders < ActiveRecord::Migration[7.2]
  def change
    add_column :readers, :name, :string
  end
end
