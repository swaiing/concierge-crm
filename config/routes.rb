Rails.application.routes.draw do

  root 'dashboard#show'

  # Web interface POST
  resources :support_messages, only: [ :create ]

  # Twilio webhook POST
  resources :member_messages, only: [ :create ]

  # AJAX polling for new messages
  resources :messages, only: [ :index ]

end