class DecksController < ApplicationController
    def index
    end

    def create
        Deck.create(deck_params)
        redirect_to root_path
    end

    def new
    end

    def show
        @deck = Deck.find(params[:id])
    end

    def destroy
        @deck = Deck.find(params[:id])
        @deck.destroy
        redirect_to root_path
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
