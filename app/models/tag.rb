class Tag < ApplicationRecord
  has_many :site_tags
  has_many :sites, through: :site_tags
  has_many :article_tags
  has_many :articles, through: :article_tags
end
