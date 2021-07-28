class Article < ApplicationRecord
  has_many :article_tags, dependent: :destroy
  has_many :tags, through: :article_tags
  belongs_to :user

  def tags_save(tag_list)
    if self.tags != nil
      site_tags_records = ArticleTag.where(article_id: self.id)
      site_tags_records.destroy_all
    end

    tag_list.each do |tag|
      inspected_tag = Tag.where(name: tag['name']).first_or_create
      self.tags << inspected_tag
    end
  end
end
