Jets.application.routes.draw do
  root "apis#index"

  # todo: in ror the follow below is valid. Need to configure the jets way
  # scope path: 'apis' do
  #   get '/index', to: 'apis#index'
  # end
end
