class Student < ApplicationRecord
  belongs_to :grade
  belongs_to :kumi
  belongs_to :shusseki
end
