Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/form_mail', to: 'mails#index'
  post '/form_mail', to: 'mails#create'
  
end
