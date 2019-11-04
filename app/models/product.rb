class Product < ApplicationRecord
  #validations
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :internalCode, presence: true, uniqueness: true #refactoring
  validates :category_id, presence: true

  # -- Relations
    has_and_belongs_to_many :tags
    belongs_to :category
end
