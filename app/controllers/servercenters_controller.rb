class ServercentersController < ApplicationController
  before_action :set_servercenter, only: [:show, :edit, :update, :destroy]

  # GET /servercenters
  # GET /servercenters.json
  def index
    @servercenters = Servercenter.includes(country: :language).all
  end

  # GET /servercenters/1
  # GET /servercenters/1.json
  def show
  end

  # GET /servercenters/new
  def new
    @servercenter = Servercenter.new
  end

  # GET /servercenters/1/edit
  def edit
  end

  # POST /servercenters
  # POST /servercenters.json
  def create
    @servercenter = Servercenter.new(servercenter_params)

    respond_to do |format|
      if @servercenter.save
        format.html { redirect_to @servercenter, notice: 'Servercenter was successfully created.' }
        format.json { render :show, status: :created, location: @servercenter }
      else
        format.html { render :new }
        format.json { render json: @servercenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servercenters/1
  # PATCH/PUT /servercenters/1.json
  def update
    respond_to do |format|
      if @servercenter.update(servercenter_params)
        format.html { redirect_to @servercenter, notice: 'Servercenter was successfully updated.' }
        format.json { render :show, status: :ok, location: @servercenter }
      else
        format.html { render :edit }
        format.json { render json: @servercenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servercenters/1
  # DELETE /servercenters/1.json
  def destroy
    @servercenter.destroy
    respond_to do |format|
      format.html { redirect_to servercenters_url, notice: 'Servercenter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servercenter
      @servercenter = Servercenter.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def servercenter_params
      params.require(:servercenter).permit(:code, :server_available, :servers_capacity, :country_id)
    end
end
