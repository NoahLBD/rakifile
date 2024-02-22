json.extract! artist_post, :id, :image, :first_name, :name, :string, :stage_name, :soundcloud_link, :description, :instagram_link, :spotify_link, :twitter_link, :created_at, :updated_at
json.url artist_post_url(artist_post, format: :json)
