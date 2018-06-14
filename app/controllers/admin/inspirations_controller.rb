require_dependency "admin/application_controller"

module Admin
  class InspirationsController < ApplicationController
    before_action :set_inspiration, only: [:show, :edit, :update, :destroy]

    # GET /inspirations
    def index
      @inspirations = Inspiration.all
    end

    # GET /inspirations/1
    def show
    end

    # GET /inspirations/new
    def new
      @inspiration = Inspiration.new
    end

    # GET /inspirations/1/edit
    def edit
    end

    # POST /inspirations
    def create
      @inspiration = Inspiration.new(inspiration_params)

      if @inspiration.save
        redirect_to @inspiration, notice: 'Inspiration was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /inspirations/1
    def update
      if @inspiration.update(inspiration_params)
        redirect_to @inspiration, notice: 'Inspiration was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /inspirations/1
    def destroy
      @inspiration.destroy
      redirect_to inspirations_url, notice: 'Inspiration was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_inspiration
        @inspiration = Inspiration.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def inspiration_params
        params.require(:inspiration).permit(:link, :image, :title, :text)
      end
  end
end
