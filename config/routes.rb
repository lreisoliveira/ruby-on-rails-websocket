Rails.application.routes.draw do
  # root :to => 'application#index'
  get  "enviar"  => "application#index"
end