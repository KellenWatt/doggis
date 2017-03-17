Rails.application.routes.draw do

  id_cnstrt = /\d+/

  get '/Home',          to: redirect('/')

  get  '/login',        to: 'static_pages#login'
  get  '/register',     to: 'static_pages#register'
  post '/login',        to: 'auth#login'
  post '/register',     to: 'auth#register'

  # Subsection Homepages
  get '/problems',    to: 'static_pages#problems'
  get '/users',       to: 'static_pages#users'
  get '/tournaments', to: 'static_pages#tournaments'

  # Problems Subsection
  get '/problems/statistics', to: 'problems#stats'
  get '/problems/:id',        to: 'problems#show', constraints: { id: id_cnstrt }
  get '/problems/:name',      to: 'problems#show'
  get '/problems/:id/submit/',        to: 'problems#showUpload',    constraints: { id: id_cnstrt }
  post '/problems/:id/submit/code',   to: 'problems#uploadCode',    constraints: { id: id_cnstrt }
  post '/problems/:id/submit/output', to: 'problems#uploadOutput',  constraints: { id: id_cnstrt }
  
  # Users Subsection
  get '/users/current',             to: 'users#show'
  get '/users/current/statistics',  to: 'users#stats'
  get '/users/:id',                 to: 'users#show',   constraints: { id: id_cnstrt }
  get '/users/:id/statistics',      to: 'users#stats',  constraints: { id: id_cnstrt }
  
  # Tourtnaments Subsection
  get '/tournaments/:id',             to: 'tournaments#show', constraints: { id: id_cnstrt }
  get '/tournaments/:id/statistics',  to: 'tournaments#stats', constraints: { id: id_cnstrt }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'static_pages#Home'
  
end
