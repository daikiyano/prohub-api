module ConnpassService
  extend ActiveSupport::Concern
  def get_events(keyword)
    url = URI.parse("https://connpass.com/api/v1/event/?keyword=#{keyword}&count=10&order=2")
    @response = Net::HTTP.get(url)
    return JSON.parse(@response)
  end
end