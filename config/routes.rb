# frozen_string_literal: true
Rails.application.routes.draw do
  root 'home#index'

  post '/webhooks/telegram_vbc43edbf1614a075954dvd4bfab34l1' => 'webhooks#callback'

  post '/start', to: 'api/chat#start'
  post '/message', to: 'api/chat#message'

  mount Facebook::Messenger::Server, at: 'bot'
end
