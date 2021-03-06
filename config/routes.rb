VotoComoVamos::Application.routes.draw do
  match '/auth/facebook/callback' => 'sessions#create'
  match '/logout' => 'sessions#destroy'

  scope :scope_paths => { :new => "novo", :edit => "editar" } do
    resources :candidates, :path => "candidatos" do
      resources :proposals, :path => "propostas", :only => [:new, :create, :show, :destroy, :edit, :update] do
        get :delete
      end
      resources :ownerships
      resources :revindications, :shallow => true,
        :only => [:new, :create, :show]
    end
  
    resources :proposals, :path => "propostas" do
      resources :questions
    end
    
    resources :opinions, :path => "opinioes"
  end

  resource :main_search
  root :to => 'welcome#index'
end
