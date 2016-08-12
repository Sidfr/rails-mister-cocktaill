class Dose < ApplicationRecord
  belongs_to :cocktaill
  belongs_to :ingredient

  validates :description, :cocktaill, :ingredient, presence: true
  validates :cocktaill, uniqueness: { scope: :ingredient}
end
