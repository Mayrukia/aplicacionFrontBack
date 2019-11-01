class Product < ApplicationRecord
  #validations
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :internalCode, presence:true, uniquess:true
  validates :praice, default:0.0
  validates :cost, default:0.0
  validates :activo, default:true
  validates :categories, precense: true

  # -- Relations
    has_many :tags
    belongs_to :category
end
