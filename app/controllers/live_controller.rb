class LiveController < WebsocketRails::BaseController

  def conectados
    conectados = @_dispatcher.connection_manager.connections.count
    WebsocketRails['canal'].trigger('conectados', { usuarios_conectados: conectados})
  end

end