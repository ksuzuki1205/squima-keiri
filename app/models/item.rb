class Item < ApplicationRecord
  validates :title,       presence: true
  validates :partner,     presence: true
  validates :explanation, presence: true
  validates :price,       presence: true
  belongs_to :user
end
