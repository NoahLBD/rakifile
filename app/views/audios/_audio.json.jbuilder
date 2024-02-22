json.extract! audio, :id, :name=string, :author_name=string, :image=text, :audio=file, :duration=float, :description=string, :created_at, :updated_at
json.url audio_url(audio, format: :json)
