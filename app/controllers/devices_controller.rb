class DevicesController < ApplicationController
    def index
        devices = Device.all
        render json: devices
    end

    # Get /device/:id
    def show
        device = Device.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded device', data: device}, status: :ok
    end
  
    # POST /devices
    def create
        @brand = Brand.find(params[:brand_id])
        device = @brand.devices.new(device_params)
        if device.save
            render json: {status: 'SUCCESS', message: 'Saved device', data: device}, status: :ok
        else
            render json: {status: 'ERROR', message: 'Device not saved', data: device.errors}, status: :unprocessable_entity
        end
    end
  
    # PUT /devices/:id
    def update
        device = Device.find(params[:id])
        if device.update(device_params)
            render json: {status: 'SUCCESS', message: 'Updated device', data: device}, status: :ok
        else
            render json: {status: 'ERROR', message: 'Device not uptated', data: device.errors}, status: :unprocessable_entity
        end
    end
  
    def destroy
        device = Device.find(params[:id])
        device.destroy
        render json: {status: 'SUCCESS', message: 'Deleted device', data: device}, status: :ok
    end

    private

    def device_params
        params.require(:device).permit(:name_of_the_phone, :model_number, :specifications, :mrp, :selling_price, :availability, :status, :image, :imei_number)
    end
end
