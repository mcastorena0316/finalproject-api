# frozen_string_literal: true

if Rails.env === 'production'
  Rails.application.config.session_store :cookie_store, key: '_finalproject-api', domain: :all
else
  Rails.application.config.session_store :cookie_store, key: '_finalproject-api'
  end
