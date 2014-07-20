class ContactpersoonsController < ApplicationController
  before_action :set_contactpersoon, only: [:show, :edit, :update, :destroy]

  # GET /contactpersoons
  # GET /contactpersoons.json
  def index
    @contactpersoons = Contactpersoon.all
  end

  # GET /contactpersoons/1
  # GET /contactpersoons/1.json
  def show
  end

  # GET /contactpersoons/new
  def new
    @contactpersoon = Contactpersoon.new
  end

  # GET /contactpersoons/1/edit
  def edit
  end

  # POST /contactpersoons
  # POST /contactpersoons.json
  def create
    @contactpersoon = Contactpersoon.new(contactpersoon_params)

    respond_to do |format|
      if @contactpersoon.save
        format.html { redirect_to @contactpersoon, notice: 'Contactpersoon was successfully created.' }
        format.json { render :show, status: :created, location: @contactpersoon }
      else
        format.html { render :new }
        format.json { render json: @contactpersoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contactpersoons/1
  # PATCH/PUT /contactpersoons/1.json
  def update
    respond_to do |format|
      if @contactpersoon.update(contactpersoon_params)
        format.html { redirect_to @contactpersoon, notice: 'Contactpersoon was successfully updated.' }
        format.json { render :show, status: :ok, location: @contactpersoon }
      else
        format.html { render :edit }
        format.json { render json: @contactpersoon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contactpersoons/1
  # DELETE /contactpersoons/1.json
  def destroy
    @contactpersoon.destroy
    respond_to do |format|
      format.html { redirect_to contactpersoons_url, notice: 'Contactpersoon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactpersoon
      @contactpersoon = Contactpersoon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contactpersoon_params
      params.require(:contactpersoon).permit(:name, :function, :mail, :telephone, :note)
    end
end
