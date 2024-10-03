json.extract! blog, :id, :Title, :Content, :Image, :Published, :created_at, :updated_at
json.url blog_url(blog, format: :json)
