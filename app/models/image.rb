class Image < ApplicationRecord
  validatates :photo_url, presence: true
  belongs_to :project
end
