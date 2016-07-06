class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    resposta = {'mensagem': params[:mensagem].to_s }
    WebsocketRails['canal'].trigger('evento', resposta)

    render json: resposta, status: :ok
  end

end
