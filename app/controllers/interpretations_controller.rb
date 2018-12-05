class InterpretationsController < ApplicationController
  before_action :set_interpretation, only: [:show, :edit, :update, :destroy]
  before_action :set_musica, :set_fa, only: [:index, :new, :destroy] #Dan
  
  # GET /interpretations
  # GET /interpretations.json
  def index
	@interpretations = Interpretation.where(musica_id: params[:musica_id]) #Dan
  end

  # GET /interpretations/1
  # GET /interpretations/1.json
  def show
  end

  # GET /interpretations/new
  def new
    @interpretation = @musica.interpretations.build(fa: @fa)
  end

  # GET /interpretations/1/edit
  def edit
  end

  # POST /interpretations
  # POST /interpretations.json
  def create
    @interpretation = Interpretation.new(interpretation_params)
	@interpretation.fa_id = session[:fa_id]
	#@interpretation = @musica.interpretations.build(fa: @fa)

    respond_to do |format|
      if @interpretation.save
        format.html { redirect_to @interpretation, notice: 'Interpretation was successfully created.' }
        format.json { render :show, status: :created, location: @interpretation }
      else
        format.html { render :new }
        format.json { render json: @interpretation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interpretations/1
  # PATCH/PUT /interpretations/1.json
  def update
    respond_to do |format|
      if @interpretation.update(interpretation_params)
        format.html { redirect_to @interpretation, notice: 'Interpretation was successfully updated.' }
        format.json { render :show, status: :ok, location: @interpretation }
      else
        format.html { render :edit }
        format.json { render json: @interpretation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interpretations/1
  # DELETE /interpretations/1.json
  def destroy
    interpretation = @interpretation.musica
    @interpretation.destroy
    respond_to do |format|
      format.html { redirect_to musica_url(@musica.id), notice: 'Interpretation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interpretation
      @interpretation = Interpretation.find_by(params[:id])
    end
	
	def set_musica
      @musica = Musica.find_by(params[:musica_id])
    end	
	
	def set_fa
      @fa = Fa.find_by(params[:fa_id])
    end	

    # Never trust parameters from the scary internet, only allow the white list through.
    def interpretation_params
      params.require(:interpretation).permit(:interpretation, :musica_id, :fa_id)
    end
end
