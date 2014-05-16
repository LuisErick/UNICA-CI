Rails.application.routes.draw do
  resources :salaries

  resources :grades

  resources :grade_types

  resources :student_attendances

  resources :payments

  resources :payment_types

  resources :teacher_attendaces

  resources :packages

  resources :rooms

  resources :schedules

  resources :matriculation_courses

  resources :documents

  resources :document_types

  resources :matricualtion_validates

  resources :matriculations

  resources :levels

  resources :pre_mariculation_communicatives

  resources :languages

  resources :course_types

  resources :pre_matriculations

  resources :teachers

  resources :postgrade_types

  resources :postgrade_people

  resources :faculties

  resources :colleges

  resources :unica_people

  resources :students

  resources :clerks

  resources :administrators

  resources :marital_statuses

  resources :people

  resources :users

  resources :permisssions

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
