Day1LearnDaily::Application.routes.draw do
  resource :random, :only => :index

  get '/random', to: 'random#index'

  root :to => 'article#index'
end
