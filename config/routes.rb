Rails.application.routes.draw do
  root 'pages#home'
  get '/:device', to: 'pages#device', as: 'device'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
