# frozen_string_literal: true

Rails.application.routes.draw do
  get 'session/destroy'
  get 'session/create'
  get 'session/new'
  # FORMAT: get: [path], to: [controller#action], as: [name of route]
  get "index/", to: "index#index", as: "index"
  get "tutoriais/", to: "tutorials#index", as: "tutorials"

  root "index#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
