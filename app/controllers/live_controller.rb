class LiveController < WebsocketRails::BaseController

  def conectados
    WebsocketRails['canal'].trigger('conectados', { usuarios_conectados: @_dispatcher.connection_manager.connections.count })
  end

end