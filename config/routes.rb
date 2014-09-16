Rails.application.routes.draw do
  # Courses routes
  get "courses/:course_id/homeworks" => 'courses#homeworks', as: 'course_homeworks'
  get "courses/:course_id/announcements" => 'courses#announcements', as: 'course_announcements'
  get "courses/:course_id/students" => 'courses#students', as: 'course_students'
  get "student/search_course" => 'students#search', as: 'search_course'
  post 'student/enroll' => 'students#enroll', as: 'enroll_student'
  resources :homework_deliveries
  get 'homework_deliveries/download_file/:id' => 'homework_deliveries#download_file', as: 'download_homework_deliveries'
  
 
  devise_for :users
  resources :teachers

  resources :students

  resources :universities

 
  resources :courses do
    resources :homeworks
    
    resources :announcements do
       resources :comments
    end
  end
 


 
  get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
