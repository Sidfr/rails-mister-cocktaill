class Cocktaill < ApplicationRecord
    validates :name, presence: true, uniqueness: true
end
