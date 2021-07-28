class SiteTag < ApplicationRecord
  belongs_to :site
  belongs_to :tag
  belongs_to :article
end
