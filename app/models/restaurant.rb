class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # validates
  # name cannot be blank
  validates :name, presence: true
  # address cannot be blank
  validates :address, presence: true
  # category cannot be blank
  # neptunian is not a valid category
  validates :category, presence: true, inclusion: { in: %w[chinese italian japanese french belgian] }
end
