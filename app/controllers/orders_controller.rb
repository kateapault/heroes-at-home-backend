class OrdersController < ApplicationController

    def index
        orders = Order.all
        render json: orders
    end

    def show
        order = Order.find(params[:id])
        render json: order
    end

    def create
        order = Order.new(order_params)

        if order.save
            render json: order
        else
            render json: {error: "unable to save"}
        end
    end

    def change_status
        order = Order.find(params[:id])
        status = params[:status]
        if ["open","in progress","stocked","complete"].includes? status
            order.status = status
            render json: order
        else
            render json: {error: "invalid status, or something went wrong"}
        end
    end

    def update
        trip = Trip.find(params[:id])
        render json: trip.update(trip_params)
    end

    def destroy
        order = Order.find(params[:id])
        order.delete
    end

    private
    def order_params
        params.require(:order).permit(:status,:equipment_id,:number,:address_id,:notes)
    end
end