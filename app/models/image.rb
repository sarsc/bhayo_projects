class Image < ApplicationRecord
  validatates presence: true
  belongs_to :project
end
