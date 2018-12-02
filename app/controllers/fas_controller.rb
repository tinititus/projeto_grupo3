class FasController < ApplicationController
  before_action :set_fa, only: [:show, :edit, :update, :destroy]
  before_action :set_usuario, only: [:new]
  
  # GET /fas
  # GET /fas.json
  def index
    @fas = Fa.all
  end

  # GET /fas/1
  # GET /fas/1.json
  def show
    session[:fa_id] = @fa.id #Dan
	@bandas = Banda.all #Dan
	@ratings = Rating.where(fa_id: @fa) #Dan
	@interpretations = Interpretation.where(fa_id: @fa) #Dan
  end

  # GET /fas/new
  def new
    @fa = Fa.new(usuario: @usuario)
  end

  # GET /fas/1/edit
  def edit
  end

  # POST /fas
  # POST /fas.json
  def create
    @fa = Fa.new(fa_params)

    respond_to do |format|
      if @fa.save
        format.html { redirect_to @fa, notice: 'Fa was successfully created.' }
        format.json { render :show, status: :created, location: @fa }
      else
        format.html { render :new }
        format.json { render json: @fa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fas/1
  # PATCH/PUT /fas/1.json
  def update
    respond_to do |format|
      if @fa.update(fa_params)
        format.html { redirect_to @fa, notice: 'Fa was successfully updated.' }
        format.json { render :show, status: :ok, location: @fa }
      else
        format.html { render :edit }
        format.json { render json: @fa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fas/1
  # DELETE /fas/1.json
  def destroy
    @fa.destroy
    respond_to do |format|
      format.html { redirect_to fas_url, notice: 'Fa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fa
      @fa = Fa.find(params[:id])
    end
	
	def set_usuario
      @usuario = Usuario.find(session[:usuario_id])
    end	

    # Never trust parameters from the scary internet, only allow the white list through.
    def fa_params
      params.require(:fa).permit(:apelido, :usuario_id)
    end
end
