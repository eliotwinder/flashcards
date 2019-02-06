@currentCardIndex = 0

toggleCard = (cardIndex) ->
    card = document.cards[cardIndex]
    card.hidden = !card.hidden

@nextCard = () ->
    toggleCard(@currentCardIndex)
    if @currentCardIndex == document.deckLength - 1
        document.querySelector(".finished").hidden = false
        document.querySelector(".next").hidden = true
    else
        @currentCardIndex += 1
        toggleCard(@currentCardIndex)

@revealAnswer = (element) ->
    element.parentElement.querySelector(".back").hidden = false
    element.hidden = true

@startOver = () ->
    for card in document.cards
        card.hidden = true
    document.cards[0].hidden = false
    document.querySelector(".finished").hidden = true
    document.querySelector(".next").hidden = false
    @currentCardIndex = 0

docReady = () ->
    jsVariables = document.querySelector('#jsVariables')
    if jsVariables
        @deckLength = Number(jsVariables.dataset.decklength)
        @cards = document.querySelectorAll(".card")
        @cards[0].hidden = false

document.addEventListener "turbolinks:load", docReady
