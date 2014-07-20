class ActionpointsController < ApplicationController
  before_action :set_actionpoint, only: [:show, :edit, :update, :destroy]

  # GET /actionpoints
  # GET /actionpoints.json
  def index
    @actionpoints = Actionpoint.all
  end

  # GET /actionpoints/1
  # GET /actionpoints/1.json
  def show
  end

  # GET /actionpoints/new
  def new
    @actionpoint = Actionpoint.new
  end

  # GET /actionpoints/1/edit
  def edit
  end

  # POST /actionpoints
  # POST /actionpoints.json
  def create
    @actionpoint = Actionpoint.new(actionpoint_params)

    respond_to do |format|
      if @actionpoint.save
        format.html { redirect_to @actionpoint, notice: 'Actionpoint was successfully created.' }
        format.json { render :show, status: :created, location: @actionpoint }
      else
        format.html { render :new }
        format.json { render json: @actionpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actionpoints/1
  # PATCH/PUT /actionpoints/1.json
  def update
    respond_to do |format|
      if @actionpoint.update(actionpoint_params)
        format.html { redirect_to @actionpoint, notice: 'Actionpoint was successfully updated.' }
        format.json { render :show, status: :ok, location: @actionpoint }
      else
        format.html { render :edit }
        format.json { render json: @actionpoint.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actionpoints/1
  # DELETE /actionpoints/1.json
  def destroy
    @actionpoint.destroy
    respond_to do |format|
      format.html { redirect_to actionpoints_url, notice: 'Actionpoint was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actionpoint
      @actionpoint = Actionpoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actionpoint_params
      params.require(:actionpoint).permit(:action, :status, :datum)
    end
end
