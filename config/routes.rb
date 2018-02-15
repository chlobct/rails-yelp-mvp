Rails.application.routes.draw do
  get 'pages/home'

  get    "restaurants",          to: "restaurants#index"

  get    "restaurants/new",      to: "restaurants#new"
  post   "restaurants",          to: "restaurants#create"

  # NB: The `show` route needs to be *after* `new` route.
  get    "restaurants/:id",      to: "restaurants#show"

  get    "restaurants/:id/edit", to: "restaurants#edit"
  patch  "restaurants/:id",      to: "restaurants#update"

  delete "restaurants/:id",      to: "restaurants#destroy"
end
