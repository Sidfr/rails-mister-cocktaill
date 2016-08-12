class Cocktaill < ApplicationRecord
    has_attachments :photos, maximum: 3
    validates :name, presence: true, uniqueness: true

    has_many :doses, dependent: :destroy
    has_many :ingredients, through: :doses



end
