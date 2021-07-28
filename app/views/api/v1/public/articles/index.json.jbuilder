json.array!(@articles) do |article|
  json.extract! article, :title, :body,:thumbnail
  json.tags article.article_tags.each do |article_tag|
    json.id article_tag.tag.id
    json.name article_tag.tag.name
  end
end