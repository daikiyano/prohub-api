require 'net/http'

# Qiitaのタグ取得
PER_PAGE = "100"
for page in 1..4 do
  url = "https://qiita.com/api/v2/tags?page=" + page.to_s + "&per_page=" + PER_PAGE + "&sort=count"
  uri = URI.parse(url)
  response = Net::HTTP.get(uri)
  results = JSON.parse(response)
  puts results
  for result in results do
    Tag.create(name: result["id"],icon_url: result["icon_url"],followers_count: result["followers_count"],items_count: result["items_count"])
  end
end