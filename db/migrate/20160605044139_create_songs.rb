class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :artist, null: false
      t.string :title, null: false
      t.text :lyric, null: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
