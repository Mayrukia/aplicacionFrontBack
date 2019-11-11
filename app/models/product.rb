class Product < ApplicationRecord
  #validations

  validates :name, :description, :internalCode, :category_id, presence: true
  validates :name, :internalCode, uniqueness: true

  # -- Relations
  has_and_belongs_to_many :tags
  belongs_to :category

  has_one_attached :image

  def get_image
   image.attached? ? image : 'missing.png'
  end
end
