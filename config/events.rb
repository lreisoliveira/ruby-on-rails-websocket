WebsocketRails::EventMap.describe do

  namespace :tasks do
    subscribe :trigger,  to: TaskController, with_method: :trigger
    subscribe :conectados,  to: LiveController, with_method: :conectados
  end
  
end
