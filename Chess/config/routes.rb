Rails.application.routes.draw do
  Rails.application.routes.draw do
    get '/game', to: 'controls#game'
    root 'controls#index'
    get '/champions', to: 'controls#champions'
    get '/rules', to: 'controls#rules'
    get '/player/:id', to: 'controls#show', as: 'player'
  end
end
