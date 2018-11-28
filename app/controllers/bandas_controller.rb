class BandasController < ApplicationController 
  before_action :set_banda, only: [:show, :edit, :update, :destroy]

  # GET /bandas
  # GET /bandas.json
  def index
    @bandas = Banda.all
  end

  # GET /bandas/1
  # GET /bandas/1.json
  def show
	#session[:banda_id] = @banda.id
  end

  # GET /bandas/new
  def new
    @banda = Banda.new
  end

  # GET /bandas/1/edit
  def edit
  end

  # POST /bandas
  # POST /bandas.json
  def create
    @banda = Banda.new(banda_params)

    respond_to do |format|
      if @banda.save
        format.html { redirect_to @banda, notice: 'Banda was successfully created.' }
        format.json { render :show, status: :created, location: @banda }
      else
        format.html { render :new }
        format.json { render json: @banda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bandas/1
  # PATCH/PUT /bandas/1.json
  def update
    respond_to do |format|
      if @banda.update(banda_params)
        format.html { redirect_to @banda, notice: 'Banda was successfully updated.' }
        format.json { render :show, status: :ok, location: @banda }
      else
        format.html { render :edit }
        format.json { render json: @banda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bandas/1
  # DELETE /bandas/1.json
  def destroy
    @banda.destroy
    respond_to do |format|
      format.html { redirect_to bandas_url, notice: 'Banda was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banda
      @banda = Banda.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banda_params
      params.require(:banda).permit(:name, :genero, :pais_de_origem, :membros, :media_rating, :status)
    end
end
