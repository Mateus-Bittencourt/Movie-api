json.array! @movies do |movie|
  json.extract! movie, :id, :title, :genre, :year, :country, :published_at, :description
end
