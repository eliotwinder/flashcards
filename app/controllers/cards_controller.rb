class CardsController < ApplicationController
    def create
        @deck = Deck.find(params[:deck_id])
        @card = @deck.cards.create(card_params)
        redirect_to @deck
    end

    private
        def card_params
            params.require(:card).permit(:front, :back)
        end
end
