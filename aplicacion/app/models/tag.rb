class Tag < ApplicationRecord
  # -- Validations
 validates :name, presence: true, uniqueness: true

 #Relations
 belongs_to :tag
end
