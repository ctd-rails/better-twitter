class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.text :contents
      t.string :picture
      t.string :location
      t.integer :user_id

      t.timestamps
    end
  end
end
