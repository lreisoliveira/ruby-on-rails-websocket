module Websocket
  class Task

    def self.send(evento_id)
      puts evento_id.class
      WebsocketRails['canal'].trigger('evento', 'resposta')
    end

  end
end