@currentCardIndex = 0

toggleCard = (cardIndex) ->
    card = document.cards[cardIndex]
    card.hidden = !card.hidden

@nextCard = () ->
    @currentCardIndex += 1

    if @currentCardIndex == document.deckLength
        alert 'no more cards'
    else
        toggleCard(@currentCardIndex - 1)
        toggleCard(@currentCardIndex)

@revealAnswer = (element) ->
    element.parentElement.querySelector(".back").hidden = false
    element.hidden = true

docReady = () ->
    @deckLength = Number(document.querySelector('#jsVariables').dataset.decklength)
    @cards = document.querySelectorAll(".card")
    @cards[0].hidden = false

document.addEventListener "DOMContentLoaded", docReady
