class TaskController < WebsocketRails::BaseController

  def trigger
    WebsocketRails['canal'].trigger('evento', { narracao: 'opa' })
  end

end