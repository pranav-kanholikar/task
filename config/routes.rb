# == Route Map
#
#                   Prefix Verb   URI Pattern                                       Controller#Action
#                 colleges GET    /colleges(.:format)                               colleges#index
#                          POST   /colleges(.:format)                               colleges#create
#              new_college GET    /colleges/new(.:format)                           colleges#new
#             edit_college GET    /colleges/:id/edit(.:format)                      colleges#edit
#                  college GET    /colleges/:id(.:format)                           colleges#show
#                          PATCH  /colleges/:id(.:format)                           colleges#update
#                          PUT    /colleges/:id(.:format)                           colleges#update
#                          DELETE /colleges/:id(.:format)                           colleges#destroy
#         new_user_session GET    /users/sign_in(.:format)                          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)                          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)                         devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)                     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)                    devise/passwords#edit
#            user_password PATCH  /users/password(.:format)                         devise/passwords#update
#                          PUT    /users/password(.:format)                         devise/passwords#update
#                          POST   /users/password(.:format)                         devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)                           registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)                          registrations#new
#   edit_user_registration GET    /users/edit(.:format)                             registrations#edit
#        user_registration PATCH  /users(.:format)                                  registrations#update
#                          PUT    /users(.:format)                                  registrations#update
#                          DELETE /users(.:format)                                  registrations#destroy
#                          POST   /users(.:format)                                  registrations#create
#         student_subjects GET    /students/:student_id/subjects(.:format)          subjects#index
#                          POST   /students/:student_id/subjects(.:format)          subjects#create
#      new_student_subject GET    /students/:student_id/subjects/new(.:format)      subjects#new
#     edit_student_subject GET    /students/:student_id/subjects/:id/edit(.:format) subjects#edit
#          student_subject GET    /students/:student_id/subjects/:id(.:format)      subjects#show
#                          PATCH  /students/:student_id/subjects/:id(.:format)      subjects#update
#                          PUT    /students/:student_id/subjects/:id(.:format)      subjects#update
#                          DELETE /students/:student_id/subjects/:id(.:format)      subjects#destroy
#                 students GET    /students(.:format)                               students#index
#                          POST   /students(.:format)                               students#create
#              new_student GET    /students/new(.:format)                           students#new
#             edit_student GET    /students/:id/edit(.:format)                      students#edit
#                  student GET    /students/:id(.:format)                           students#show
#                          PATCH  /students/:id(.:format)                           students#update
#                          PUT    /students/:id(.:format)                           students#update
#                          DELETE /students/:id(.:format)                           students#destroy
#                     root GET    /                                                 students#index
# 

Rails.application.routes.draw do
  

  resources :colleges

  devise_for :users, :controllers => {registrations: 'registrations'}
  resources :students do
  resources :subjects
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "students#index"
end
