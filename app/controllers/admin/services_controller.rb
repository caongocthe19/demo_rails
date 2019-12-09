# frozen_string_literal: true

module Admin
  class ServicesController < BaseController
    def index
      @services = Service.newest
    end

    def new
      @service = Service.new
    end

    def create
      @service = Service.new(service_params)

      if @service.save
        redirect_to admin_services_path, flash: { success: "Create service successfyll!" }
      else
        render :new
      end
    end

    private

    def service_params
      params.require(:service).permit(:name, :unit_price)
    end
  end
end
