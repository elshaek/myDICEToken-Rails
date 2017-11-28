Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Currencies
  get '/currencies/USD',          to: 'currencies#usd'
  get '/currencies/IDR',          to: 'currencies#idr'
  get '/currencies/requestinfo',  to: 'currencies#request_info'

  # DICE Token
  get '/token/details', to: 'tokens#details'

  root to: 'currencies#usd'
end
