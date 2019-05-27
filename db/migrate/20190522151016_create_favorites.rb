class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id, nill: false
      t.integer :topic_id, nill: false

      t.timestamps

      t.index :user_id
      t.index :topic_id
      t.index [:user_id, :topic_id], unique: true
    end
  end
end
