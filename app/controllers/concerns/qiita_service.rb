module QiitaService
  extend ActiveSupport::Concern
  def getArticle(tag)
    url = "https://qiita.com/api/v2/items?page=1&per_page=20&query=tag%3A" + tag
    uri = URI.parse(url)
    response = Net::HTTP.get(uri)
    return JSON.parse(response) 
  end
end