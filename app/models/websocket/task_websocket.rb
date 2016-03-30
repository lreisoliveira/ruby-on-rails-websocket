module Websocket
  class Task

    def send(evento_id)
      WebsocketRails['canal'].trigger('evento', { narracao: 'aeeeeeeeeeeee' })
    end

  end
end