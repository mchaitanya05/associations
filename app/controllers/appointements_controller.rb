class AppointementsController < ApplicationController
  before_action :set_appointement, only: %i[ show edit update destroy ]

  # GET /appointements or /appointements.json
  def index
    @appointements = Appointement.all
  end

  # GET /appointements/1 or /appointements/1.json
  def show
  end

  # GET /appointements/new
  def new
    @appointement = Appointement.new
  end

  # GET /appointements/1/edit
  def edit
  end

  # POST /appointements or /appointements.json
  def create
    @appointement = Appointement.new(appointement_params)

    respond_to do |format|
      if @appointement.save
        format.html { redirect_to appointement_url(@appointement), notice: "Appointement was successfully created." }
        format.json { render :show, status: :created, location: @appointement }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointements/1 or /appointements/1.json
  def update
    respond_to do |format|
      if @appointement.update(appointement_params)
        format.html { redirect_to appointement_url(@appointement), notice: "Appointement was successfully updated." }
        format.json { render :show, status: :ok, location: @appointement }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointements/1 or /appointements/1.json
  def destroy
    @appointement.destroy

    respond_to do |format|
      format.html { redirect_to appointements_url, notice: "Appointement was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointement
      @appointement = Appointement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointement_params
      params.require(:appointement).permit(:appointment_date, :Patient_id, :Physician_id)
    end
end
