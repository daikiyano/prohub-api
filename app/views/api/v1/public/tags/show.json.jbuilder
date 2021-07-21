json.array!(@tags.site_tags.each) do |site_tag| 
  json.extract! site_tag.site, :id, :name, :description, :price,:url
  json.image_url site_tag.site.image_url
  json.tags site_tag.site.site_tags.each do |site_tag|
    json.id site_tag.tag.id
    json.name site_tag.tag.name
  end
end

