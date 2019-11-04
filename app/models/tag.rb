class Tag < ApplicationRecord
  # -- Validations
 validates :name, presence: true, uniqueness: true

 #Relations
 belongs_to :tag
 has_and_belongs_to_many :products
end
