class AddIndexToUsuariosEmail < ActiveRecord::Migration[5.1]
  @usuario = Usuario.find_by(email: params[:session][:email].downcase)
	if @usuario && @usuario.authenticate(params[:session][:password])
		sign_in @usuario
	end
  def change
  end
end
