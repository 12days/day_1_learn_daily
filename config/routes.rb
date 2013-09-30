Day1LearnDaily::Application.routes.draw do
  resource :article, :only => :index

  root :to => 'article#index'
end
