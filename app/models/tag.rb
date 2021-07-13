class Tag < ApplicationRecord
  has_many :site_tags
  has_many :tags, through: :site_tags
end
