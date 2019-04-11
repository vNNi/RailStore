Rails.application.routes.draw do
  root to: "products#index"
  get "/products/new", to: "products#new"
  post "/products", to: "products#create"
  delete "/products/:id", to: "products#destroy", as: :produto
  get "/products/search", to: "products#search"
end
