Rails.application.routes.draw do
  resources :orders
  scope module: :api, path: "api" do
    resources :orders
  end
  resources :dishes
  scope module: :api, path: "api" do
    resources :dishes
  end
  devise_for :users
  root to: 'home#index'
  resources :categories, except: [:show]
  resources :clients
  scope module: :api, path: "api" do
    resources :clients
  end
  resources :suppliers, except: [:show]
  get 'buscador_proveedor/:termino', to: 'suppliers#buscador'
  post '/add_sup_almacen/', to: 'warehouses#add_proveedor'

  resources :products
  resources :sales
  get 'buscador_productos/:termino', to: 'products#buscador'
  post 'add_item_venta', to: 'sales#add_item'
  get 'buscador_clientes/:termino', to: 'clients#buscador'
  post '/add_cliente_venta/', to: 'sales#add_cliente'

  resources :warehouses
  post 'add_item_almacen', to: 'warehouses#add_item'
  get 'buscador_proveedores/:termino', to: 'suppliers#buscador'
  post '/add_proveedor_entrada/', to: 'warehouses#add_proveedor'

  resources :profiles, only: [:show, :edit, :update]

  post '/search', to: 'search#results'
end
