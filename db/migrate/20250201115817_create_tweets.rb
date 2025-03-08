class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :title
      t.text :about
      t.text :body

      t.timestamps
    end
  end
end
