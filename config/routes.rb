Rails.application.routes.draw do
  authenticate :user, lambda {|u| u.role.try(:name) == 'Administrator' } do
    mount Resque::Server.new, at: "/resque", as: :resque
  end

  as :user do
    get 'users/edit' => 'devise/registrations#edit', as: 'edit_user_registration'
    put 'users' => 'devise/registrations#update', as: 'user_registration'
  end
  devise_for :users, skip: [:registration]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
