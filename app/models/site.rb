class Site < ApplicationRecord
  include Rails.application.routes.url_helpers

  has_many :site_tags, dependent: :destroy
  has_many :tags, through: :site_tags

  validates :name, presence: true
  validates :description, presence: true
  validates :url, presence: true
  validates :price, presence: true
  validates :image, presence: true

  has_one_attached :image

  def image_url
    # 紐づいている画像のURLを取得する
    image.attached? ? url_for(image) : nil
  end

  def tags_save(tag_list)
    if self.tags != nil
      site_tags_records = SiteTag.where(site_id: self.id)
      site_tags_records.destroy_all
    end

    tag_list.each do |tag|
      inspected_tag = Tag.where(name: tag['name']).first_or_create
      logger.debug(self.tags)
      self.tags << inspected_tag
    end
  end
end
