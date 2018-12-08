Rails.application.routes.draw do
  Rails.application.routes.draw do
    get '/game', to: 'controls#game'
    root 'controls#index'
    get '/champions', to: 'controls#champions'
    get '/rules', to: 'controls#rules'
  end
end
