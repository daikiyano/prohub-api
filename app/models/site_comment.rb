class SiteComment < ApplicationRecord
  belongs_to :user
  belongs_to :site
end
