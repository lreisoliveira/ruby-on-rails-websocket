WebsocketRails::EventMap.describe do

  namespace :tasks do
    subscribe :conectados, to: LiveController, with_method: :conectados
  end

end
