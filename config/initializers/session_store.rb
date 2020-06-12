if Rails.env === 'production' 
    Rails.application.config.session_store :cookie_store, key: '_finalproject-api', domain: 'https://illnest-api.herokuapp.com/'
  else
    Rails.application.config.session_store :cookie_store, key: '_finalproject-api' 
  end