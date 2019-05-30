class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id, nill: false
      t.integer :topic_id, nill: false

      t.timestamps


      
    end
  end
end
