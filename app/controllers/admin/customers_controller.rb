# frozen_string_literal: true

module Admin
  class CustomersController < BaseController
    before_action :find_customer, only: %i[edit destroy update]

    def index
      @customers = Customer.newest
    end

    def new
      @customer = Customer.new
    end

    def create
      @customer = Customer.new(customer_params)
      if @customer.save
        redirect_to admin_customer_path, flash: { success: "Create service succcessfully" }
      else
        render :new
      end
    end

    def edit; end

    def destroy
      redirect_to admin_customer_path, flash: { success: "Destroy successfully" }
    end

    def update
      if @customer.update(customer_params)
        redirect_to admin_customer_path, flash: { success: "Customer Update!" }
      else
        render :edit, flash: { error: "Update failed! " }
      end
    end

    private

    def customer_params
      params.require(:customer).permit(:name, :address, :phone)
    end

    def find_customer
      @customer = Customer.find(params[:id])
    end
  end
end
