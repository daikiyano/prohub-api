json.extract! @site, :id, :name, :description, :price,:url
json.image_url @site.image_url
json.site_comments @site.site_comments.each do |site_comment| 
  json.id site_comment.id
  json.review site_comment.review
  json.comment site_comment.comment
  json.username site_comment.user.username
  json.created_at site_comment.user.created_at
end
json.tags @site.site_tags.each do |site_tag|
  json.id site_tag.tag.id
  json.name site_tag.tag.name
end

