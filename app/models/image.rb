class Image < ApplicationRecord
  validates :photo_url, presence: true
  belongs_to :project

  mount_uploader :photo_url, PhotoUploader
end
