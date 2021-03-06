# frozen_string_literal: true

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root to: redirect('/quotes')

  resources :quotes do
    resources :products, controller: 'quote_products', only: %i[new create destroy]
  end
end


