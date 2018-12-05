class MusicasController < ApplicationController
  before_action :set_musica, only: [:show, :edit, :update, :destroy]
  before_action :set_banda, only: [:show, :index, :new, :destroy] #Dan
  
  # GET /musicas
  # GET /musicas.json
  def index
    #@musicas = Musica.all
    #@musicas = Musica.where(banda_id: session[:banda_id]) #Dan
    #@musicas = Musica.where(banda_id: params[:banda_id]) #Dan
	@musicas = Musica.where(banda_id: @banda) #Dan
  end

  # GET /musicas/1
  # GET /musicas/1.json
  def show
	@usuario = Usuario.find(session[:usuario_id])
	if @usuario.tipo == "fa"
		@fa = Fa.find(session[:fa_id])
		@interpretationsdofa = Interpretation.where(fa_id: @fa)
	end
    @interpretations = Interpretation.where(musica_id: @musica)
  end

  # GET /musicas/new
  def new
    @musica = @banda.musicas.new #Dan
  end

  # GET /musicas/1/edit
  def edit
  end

  # POST /musicas
  # POST /musicas.json
  def create
    @musica = Musica.new(musica_params)
	@musica.banda_id = session[:banda_id]
    respond_to do |format|
      if @musica.save
        format.html { redirect_to @musica, notice: 'Musica was successfully created.' }
        format.json { render :show, status: :created, location: @musica }
      else
        format.html { render :new }
        format.json { render json: @musica.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /musicas/1
  # PATCH/PUT /musicas/1.json
  def update
    respond_to do |format|
      if @musica.update(musica_params)
        format.html { redirect_to @musica, notice: 'Musica was successfully updated.' }
        format.json { render :show, status: :ok, location: @musica }
      else
        format.html { render :edit }
        format.json { render json: @musica.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /musicas/1
  # DELETE /musicas/1.json
  #Dan
  def destroy
	banda = @musica.banda
    @musica.destroy
    respond_to do |format|
      format.html { redirect_to banda_url(@banda.id), notice: 'Musica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_musica
      @musica = Musica.find(params[:id])
    end

	#Dan
	def set_banda
	  #@banda = Banda.find(session[:banda_id])
      @banda = Banda.find(session[:banda_id])
    end	
	
    # Never trust parameters from the scary internet, only allow the white list through.
    def musica_params
      params.require(:musica).permit(:name, :duracao, :letra, :album, :banda_id) #Dan
    end
end
