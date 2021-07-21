  json.array!(@sites) do |site|
    json.extract! site, :id, :name
    json.image_url site.image_url
    json.tags site.site_tags.each do |site_tag|
      json.id site_tag.tag.id
      json.name site_tag.tag.name
    end
  end
