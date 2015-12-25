Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
 
  devise_for :users 

  resources :questions
  resources :forms
  resources :courses
  resources :users 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  get 'student' => 'students#show'
  get 'course/:code' => 'courses#show'
  get 'instructor/course' => 'instructors#course'
  get 'instructor/home' => 'instructors#home'

  get 'quiz' => 'quizzes#show'
  get 'quiz/add' => 'quizzes#add'
  get 'quiz/add_mcq' => 'quizzes#add_mcq'
  get 'quiz/add_tf' => 'quizzes#add_tf'
  get 'quiz/add_essay' => 'quizzes#add_essay'

  post 'quiz/create' => 'quizzes#create'


  #get 'forms/:form_id' => 'forms#show'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
