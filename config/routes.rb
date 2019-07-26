Rails.application.routes.draw do
    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :vendor_sweets
    get '/sweets', to: "sweets#index", as: "sweets"
    get '/vendors', to: "vendors#index", as: "vendors"

end
