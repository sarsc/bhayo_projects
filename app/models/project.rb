class Project < ApplicationRecord
  validates :category, presence: true
  has_many :images, dependent: :destroy
end
