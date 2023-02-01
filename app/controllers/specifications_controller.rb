class SpecificationsController < ApplicationController
    def index
        specifications = Specification.all
        render json:specifications
    end

    # Get /specification/:id
    def show
        specification = Specification.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded specification', data: specification}, status: :ok
    end
  
    # POST /specifications
    def create
        specification = Specification.new(specification_params)
        if specification.save
            render json: {status: 'SUCCESS', message: 'Saved specification', data: specification}, status: :ok
        else
            render json: {status: 'ERROR', message: 'Specification not saved', data: specification.errors}, status: :unprocessable_entity
        end
    end
  
    # PUT /specifications/:id
    def update
        specification = Specification.find(params[:id])
        if specification.update(specification_params)
            render json: {status: 'SUCCESS', message: 'Updated specification', data: specification}, status: :ok
        else
            render json: {status: 'ERROR', message: 'Specification not uptated', data: specification.errors}, status: :unprocessable_entity
        end
    end
  
    def destroy
        specification = Specification.find(params[:id])
        specification.destroy
        render json: {status: 'SUCCESS', message: 'Deleted pecification', data: specification}, status: :ok
    end

    private

    def specification_params
        params.require(:specification).permit(:camera, :processor, :ram, :storage, :battery, :os_type, :device_id)
    end
end
