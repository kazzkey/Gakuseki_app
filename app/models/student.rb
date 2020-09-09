class Student < ApplicationRecord
  belongs_to :grade
  belongs_to :kumi
  belongs_to :shusseki

  validates :first_name, presence: true,
                         format: { with: /\A[一-龥]+\z/ }
  validates :last_name, presence: true,
                        format: { with: /\A[一-龥]+\z/ }
  validates :first_name_furigana, presence: true,
                                  format: { with: /\A[ぁ-んー－]+\z/ }
  validates :last_name_furigana, presence: true,
                                 format: { with: /\A[ぁ-んー－]+\z/ }
end
