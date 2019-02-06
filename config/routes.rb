Rails.application.routes.draw do
    get 'welcome/index'

    resources :decks do
        resources :cards
        get 'study'
    end

    root 'welcome#index'
end
