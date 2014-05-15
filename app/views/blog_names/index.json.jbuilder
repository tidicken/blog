json.array!(@blog_names) do |blog_name|
  json.extract! blog_name, :id, :author
  json.url blog_name_url(blog_name, format: :json)
end
