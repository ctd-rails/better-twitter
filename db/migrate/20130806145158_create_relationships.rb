class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :followed_user_id
      t.integer :following_user_id

      t.timestamps
    end
  end
end
