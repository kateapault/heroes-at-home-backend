class AddressesController < ApplicationController
    def index
        addresses = Address.find(params[:id])
        render json: addresses
    end

    def show
        address = Address.find(params[:id])
        render json: address
    end

    def create
        address = Address.new(address_params)

        if address.save
            render json: address
        else
            render json: {error: "unable to save"}
        end
    end

    def update
        address = Address.find(params[:id])
        render json: address.update(address_params)
    end

    def destroy
        address = Address.find(params[:id])
        address.delete
    end

    private
    def address_params
        params.require(:address).permit(:street_address_1,:street_address_2,:city,:state,:zip)
    end
end
