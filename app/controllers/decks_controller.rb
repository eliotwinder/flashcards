class DecksController < ApplicationController
    def index
    end

    def create
        @deck = Deck.new(deck_params)
        @deck.save
        redirect_to @deck
    end

    def new
    end

    def show
        @deck = Deck.find(params[:id])
    end

    def study
        @deck = Deck.find(params[:deck_id])
        @deckLength = @deck.cards.length
    end

    private
        def deck_params
            params.require(:deck).permit(:title)
        end
end
