json.array!(@articles) do |article|
  json.extract! article, :id, :index, :show, :new
  json.url article_url(article, format: :json)
end
