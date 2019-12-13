# frozen_string_literal: true

module Admin
  class ServicesController < BaseController
    before_action :find_service, only: [:edit, :destroy, :update]

    def index
      @services = Service.newest
    end

    def new
      @service = Service.new
    end

    def create
      @service = Service.new(service_params)
      if @service.save
        redirect_to admin_services_path, flash: { success: "Create service successfully!" }
      else
        render :new
      end
    end

    def edit
    end

    def destroy   
      redirect_to admin_services_path, flash: { success: "Destroy successfully!" } if @service.destroy
    end   

    def update   
      if @service.update(service_params)   
        redirect_to admin_services_path, flash: { success: "Service updated!" }  
      else   
        render :edit, flash: { error: "Update failed!" }
      end   
    end 


    private

    def service_params
      params.require(:service).permit(:name, :unit_price)
    end

    def find_service
      @service = Service.find(params[:id])
    end
  end
end
