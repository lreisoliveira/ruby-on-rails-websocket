class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    return render json: {'numero': (1..99999).to_a.sample }, status: :ok
  end

end
