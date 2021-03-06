class Deck < ApplicationRecord
    has_many :cards
    validates :title,
        presence: true,
        length: { minimum: 1 }
end
