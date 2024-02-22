json.extract! post, :id, :name, :author_name, :image, :duration, :description, :created_at, :updated_at
json.url post_url(post, format: :json)
