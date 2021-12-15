class FrequenciaEventosController < ApplicationController
  before_action :set_frequencia_evento, only: %i[ show edit update destroy ]

  # GET /frequencia_eventos or /frequencia_eventos.json
  def index
    @frequencia_eventos = FrequenciaEvento.all
  end

  # GET /frequencia_eventos/1 or /frequencia_eventos/1.json
  def show
  end

  # GET /frequencia_eventos/new
  def new
    @frequencia_evento = FrequenciaEvento.new
    @pessoas = Pessoa.all
  end

  # GET /frequencia_eventos/1/edit
  def edit
  end

  # POST /frequencia_eventos or /frequencia_eventos.json
  def create
    @frequencia_evento = FrequenciaEvento.new(frequencia_evento_params)

    respond_to do |format|
      if @frequencia_evento.save
        format.html { redirect_to @frequencia_evento, notice: "Frequencia evento was successfully created." }
        format.json { render :show, status: :created, location: @frequencia_evento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @frequencia_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frequencia_eventos/1 or /frequencia_eventos/1.json
  def update
    respond_to do |format|
      if @frequencia_evento.update(frequencia_evento_params)
        format.html { redirect_to @frequencia_evento, notice: "Frequencia evento was successfully updated." }
        format.json { render :show, status: :ok, location: @frequencia_evento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @frequencia_evento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frequencia_eventos/1 or /frequencia_eventos/1.json
  def destroy
    @frequencia_evento.destroy
    respond_to do |format|
      format.html { redirect_to frequencia_eventos_url, notice: "Frequencia evento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frequencia_evento
      @frequencia_evento = FrequenciaEvento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def frequencia_evento_params
      params.require(:frequencia_evento).permit(:id_pessoa, :id_evento, :status)
    end
end
