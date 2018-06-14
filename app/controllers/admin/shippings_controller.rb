require_dependency "admin/application_controller"

module Admin
  class ShippingsController < ApplicationController
    before_action :set_shipping, only: [:show, :edit, :update, :destroy]

    # GET /shippings
    def index
      @shippings = Shipping.all
    end

    # GET /shippings/1
    def show
    end

    # GET /shippings/new
    def new
      @shipping = Shipping.new
    end

    # GET /shippings/1/edit
    def edit
    end

    # POST /shippings
    def create
      @shipping = Shipping.new(shipping_params)

      if @shipping.save
        redirect_to @shipping, notice: 'Shipping was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /shippings/1
    def update
      if @shipping.update(shipping_params)
        redirect_to @shipping, notice: 'Shipping was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /shippings/1
    def destroy
      @shipping.destroy
      redirect_to shippings_url, notice: 'Shipping was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_shipping
        @shipping = Shipping.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def shipping_params
        params.require(:shipping).permit(:title, :text)
      end
  end
end
