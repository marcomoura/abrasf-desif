Abrasf::Desif::Engine.routes.draw do
  get :cities, to: 'cities#index'
  get :tax_codes, to: 'tax_codes#index'
  get :service_items, to: 'service_items#index'
end
