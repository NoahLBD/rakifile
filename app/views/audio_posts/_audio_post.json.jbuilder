json.extract! audio_post, :id, :Name, :Author_name, :Image, :Description, :created_at, :updated_at
json.url audio_post_url(audio_post, format: :json)
