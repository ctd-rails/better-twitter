json.array!(@relationships) do |relationship|
  json.extract! relationship, :followed_user_id, :following_user_id
  json.url relationship_url(relationship, format: :json)
end
