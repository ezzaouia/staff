Rails.application.routes.draw do
  
  devise_for :users
  namespace :api, defaults: {format: :json} do
    namespace :v1 do
      resources :fosts do
         member do
          match 'like', to: 'fosts#upvote', via: [:put]
          match 'dislike', to: 'fosts#downvote', via: [:put]
          match 'getlikes', to: 'fosts#get_upvotes', via: [:get]
          match 'getdislikes', to: 'fosts#get_downvotes', via: [:get]
        end
        resources :reviews
      end
    end
  end

  root 'welcome#index'
  
  # get '*path', to: 'welcome#index'
  # get "*path.html", to: "application#index", :layout => 0

  # get '/dashboard', to: 'templates#index'
  get '/:path', to: 'templates#index' #, :constraints => { :path => /main||home/  }
  get '/templates/:path.html', to: 'templates#template', :constraints => { :path => /.+/  }
end
