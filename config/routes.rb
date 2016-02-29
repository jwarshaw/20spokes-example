Rails.application.routes.draw do
  resources :contact

  root "home#index"

  get "/:slug" => "home#index", slug: /.*/
end
