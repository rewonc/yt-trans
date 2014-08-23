json.array!(@comments) do |comment|
  json.extract! comment, :id, :category, :content, :votes, :snippet_id
  json.url comment_url(comment, format: :json)
end
