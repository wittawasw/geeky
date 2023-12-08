json.extract! post, :id, :title, :body, :writer_id, :created_at, :updated_at
json.url post_url(post, format: :json)
