json.set! :sites do
  json.array!(@tags.site_tags.each) do |site_tag| 
    json.extract! site_tag.site, :id, :name, :description, :price,:url
    json.image_url site_tag.site.image_url
    json.tags site_tag.site.site_tags.each do |site_tag|
      json.id site_tag.tag.id
      json.name site_tag.tag.name
    end
  end
end

json.set! :qiita do
  json.array!(@qiita_results) do |qiita_result|
    json.title qiita_result['title']
    json.url qiita_result['url']
    json.profile_image_url qiita_result['user']['profile_image_url']
    json.created_at qiita_result['created_at']
  end
end

json.set! :connpass do
  json.array!(@response['events']) do |r|
    logger.debug(r['description'])
    json.title r['title']
    json.event_url r['event_url']
    json.address r['address']
    json.started_at r['started_at']
    json.ended_at r['ended_at']
    json.description r['description']
  end
end

