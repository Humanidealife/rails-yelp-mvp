class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  CATEGORYS = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: CATEGORYS }
end
