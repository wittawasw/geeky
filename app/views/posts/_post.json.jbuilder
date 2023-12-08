json.extract! post, :id, :title, :body, :writer_name, :created_at, :updated_at
json.url post_url(post, format: :json)
