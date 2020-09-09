class Kumi < ApplicationRecord
  validates :number, presence: true, uniqueness: true,
                   numericality: { only_integer: true, greater_than: 0 }
end
