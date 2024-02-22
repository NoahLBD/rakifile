class CreateArtistPosts < ActiveRecord::Migration[7.1]
  def change
    create_table :artist_posts do |t|
      t.text :image
      t.string :first_name
      t.string :name
      t.string :stage_name
      t.text :soundcloud_link
      t.string :description
      t.text :instagram_link
      t.text :spotify_link
      t.text :twitter_link

      t.timestamps
    end
  end
end
