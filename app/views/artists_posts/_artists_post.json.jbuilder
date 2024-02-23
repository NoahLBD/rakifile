json.extract! artists_post, :id, :image, :first_name, :stage_name, :soundcloud_link, :description, :instagram_link, :spotify_link, :twitter_link, :created_at, :updated_at
json.url artists_post_url(artists_post, format: :json)
