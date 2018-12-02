class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def authorize
	unless logged_in?
		redirect_to root_url
	end
  end	
  def correct_usuario?
	@usuario = Usuario.find_by(params[:id])
	unless current_usuario == @usuario
		redirect_to usuarios_path
	end
  end
end  