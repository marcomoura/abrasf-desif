Abrasf::Desif::Engine.routes.draw do
  get :cities, to: 'cities#index'
  resources :city_tax_codes
  get :tax_codes, to: 'tax_codes#index'
  get :service_items, to: 'service_items#index'
end
