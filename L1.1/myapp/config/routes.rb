Rails.application.routes.draw do
    resources :tweets
    root 'tweets#index'
    patch 'tweets/:id', to: 'tweets#update'
    get 'tweets/:id/edit', to: 'tweets#edit'
    delete 'tweets/:id', to: 'tweets#destroy'
end
