Rails.application.routes.draw do
  post :facebook, to: 'auth#facebook'
  get '/me', to: 'api#show'
  put '/me', to: 'api#update'
  namespace 'api', defaults: {format: :json} do
    namespace 'v1' do
      resources :groups
    end
  end
end
