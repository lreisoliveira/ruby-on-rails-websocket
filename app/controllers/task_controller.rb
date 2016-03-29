class TaskController < WebsocketRails::BaseController
  # def initialize_session
  #   # perform application setup here
  #   controller_store[:message_count] = 0
  # end

  def trigger
     # Websocket::NarracaoWebsocket.send message[:id]
    send_message :new_message, {:message => 'Welcome to the Chat Room!'}
    Websocket::Task.send(123)
  end

end