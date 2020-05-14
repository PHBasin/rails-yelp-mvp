class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']

  validates :name, :address, presence: true
  validates :category, inclusion: { in: CATEGORY }
  # acceptance: { accept: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
end
