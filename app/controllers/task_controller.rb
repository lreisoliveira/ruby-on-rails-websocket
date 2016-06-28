class TaskController < WebsocketRails::BaseController

  def trigger
    # Websocket::NarracaoWebsocket.send message[:id]
    # send_message :new_message, {:message => 'Welcome to the Chat Room!'}
    # Websocket::Task.send(123)
    WebsocketRails['canal'].trigger('evento', { narracao: 'opa' })
  end

end