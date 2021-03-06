class CreateFavoritelists < ActiveRecord::Migration[5.0]
  def change
    create_table :favoritelists do |t|
      t.references :user, foreign_key: true
      t.references :tweet, foreign_key: { to_table: :microposts }

      t.timestamps
      t.index [:user_id, :tweet_id], unique: true
    end
  end
end
