Rails.application.routes.draw do

  get 'teachers/index'

  get 'teachers/schedules'

  get 'teachers/salaries'

  get 'teachers/comments'

  get 'students/index'

  get 'students/schedules'

  get 'students/notes'

  get 'students/certificates'

  get 'tasks/new_schedule'
  get "/nuevo_horario" => "tasks#new_schedule", as: :new_schedule
  post 'tasks/create_schedule'
  post "/horario_creado" => "tasks#create_schedule", as: :create_schedule
  get 'tasks/new_teacher'
  get "/registro_maestro" => "tasks#new_teacher", as: :new_teacher
  post 'tasks/create_teacher'
  post "/maestro_registrado" => "tasks#create_teacher", as: :create_teacher
  get 'tasks/pending_matriculations'
  get "/pendientes" => "tasks#pending_matriculations", as: :pending_matriculations
  post 'tasks/activate_matriculation'
  post "/activar" => "tasks#activate_matriculation", as: :activate_matriculation
  get 'help/index'

  get 'contact/index'
  post 'contact/email'
  get 'contacto' => "contact#index", as: :contact
  post 'enviando' => "contact#email", as: :f_contact
  resources :certifications

  get 'first_register/suggest_schedule'
  get 'sugerir_horario' => "first_register#suggest_schedule", as: :suggest_schedule
  post 'first_register/insert_schedule'
  post 'insertar_horario' => "first_register#insert_schedule", as: :insert_schedule
  get 'first_register/new'
  get 'first_register/new'
  post 'first_register/create'
  get "/registro" => "first_register#new", as: :new_register
  post "/registro_realizado" => "first_register#create", as: :create_register

  get 'faq/index'
  get 'faq' => "faq#index", as: :faq

  get 'welcome/index'
  get '' => "welcome#index", as: :index

  resources :teacher_attendances

  resources :permissions

  get 'profile/index'
  get "/me" => "profile#index", as: :profile
  get 'security/index'
  get "login" => "security#index", as: :security
  post 'security/login'
  get 'security/logout'

  resources :matriculation_validate_exams

  resources :matriculation_validates

  resources :salaries

  resources :grades

  resources :grade_types

  resources :student_attendances

  resources :payments

  resources :payment_types

  resources :packages

  resources :rooms

  resources :schedules

  resources :matriculation_courses

  resources :documents

  resources :document_types

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

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
