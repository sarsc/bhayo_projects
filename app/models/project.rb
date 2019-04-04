class Project < ApplicationRecord
  validates :category, presence: true
  has_many :images, dependent: :destroy

  include PgSearch
  pg_search_scope :search_by_category, against: :category
    # using: {
    #   tsearch: { prefix: true } # <-- now `superman batm` will return something!
    # }
end
