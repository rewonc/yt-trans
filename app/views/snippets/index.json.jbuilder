json.array!(@snippets) do |snippet|
  json.extract! snippet, :id, :starttime, :endtime, :video_id
  json.url snippet_url(snippet, format: :json)
end
