Rails.application.routes.draw do
  root "welcome#index"
  get "/search", to: "foods#index", as: :foods
end
