# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Qiitaのタグ取得
# PER_PAGE = "100"
# for page in 1..4 do
#   url = "https://qiita.com/api/v2/tags?page=" + page.to_s + "&per_page=" + PER_PAGE + "&sort=count"
#   uri = URI.parse(url)
#   response = Net::HTTP.get(uri)
#   results = JSON.parse(response)
#   puts results
#   for result in results do
#     SkillCategory.create(name: result["id"],icon_url: result["icon_url"],followers_count: result["followers_count"],items_count: result["items_count"])
#   end
# end