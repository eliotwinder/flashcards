class CardsController < ApplicationController
    def edit
        @deck_id = params[:deck_id]
        @card = Card.find(params[:id])
    end

    def create
        @deck = Deck.find(params[:deck_id])
        @card = @deck.cards.create(card_params)
        redirect_to @deck
    end

    def update
        @deck = Deck.find(params[:deck_id])
        @card = Card.find(params[:id])
        @card.update(card_params)
        redirect_to @deck
    end

    def destroy
        @card = Card.find(params[:id])
        @card.destroy
        @deck = Deck.find(params[:deck_id])
        redirect_to @deck
    end

    private
        def card_params
            params.require(:card).permit(:front, :back)
        end
end
