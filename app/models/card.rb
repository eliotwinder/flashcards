class Card < ApplicationRecord
    belongs_to :deck
    validates :front,
        presence: true,
        length: { minimum: 1 }
    validates :back,
        presence: true,
        length: { minimum: 1 }
end
