class EstablishmentController < ApplicationController
    before_action :set_establishment, only: [:show, :update, :destroy]

  # GET /establishment
  def index
    @establishments = Establishment.order('created_at DESC')

    render json: @establishments
  end

  # GET /establishment/1
  def show
    render :json => @establishment.to_json(:include => :products )
  end

  # POST /establishment
  def create
    @establishment = Establishment.new(establishment_params)

    if @establishment.save
      render json: @establishment, status: :created, location: @establishment
    else
      render json: @establishment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /establishment/1
  def update
    if @establishment.update(product_params)
      render json: @establishment
    else
      render json: @establishment.errors, status: :unprocessable_entity
    end
  end

  # DELETE /establishment/1
  def destroy
    @establishment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_establishment
      @establishment = Establishment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def establishment_params
      params.require(:establishment).permit(:name, :adress, :kind, :telephone, :delivery, :description)
    end
end