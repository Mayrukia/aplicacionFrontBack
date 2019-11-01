class Category < ApplicationRecord
  # -- Validations
 validates :name, presence: true, uniqueness: true

 #Relations
 has_one :products

end
