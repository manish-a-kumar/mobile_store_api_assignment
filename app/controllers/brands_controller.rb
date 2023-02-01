class BrandsController < ApplicationController
    
    # Get /brands
    def index
        brands = Brand.all
        render json: brands
    end

    # Get /brand/:id
    def show
        brand = Brand.find(params[:id])
        render json: {status: 'SUCCESS', message: 'Loaded brand', data: brand}, status: :ok
    end
  
    # POST /brands
    def create
        brand = Brand.new(brand_params)
        if brand.save
            render json: {status: 'SUCCESS', message: 'Saved brand', data: brand}, status: :ok
        else
            render json: {status: 'ERROR', message: 'Brand not saved', data: brand.errors}, status: :unprocessable_entity
        end
    end
  
    # PUT /brands/:id
    def update
        brand = Brand.find(params[:id])
        if brand.update(brand_params)
            render json: {status: 'SUCCESS', message: 'Updated brand', data: brand}, status: :ok
        else
            render json: {status: 'ERROR', message: 'Brand not uptated', data: brand.errors}, status: :unprocessable_entity
        end
    end
  
    # DELETE /brands/:id
    def destroy
        brand = Brand.find(params[:id])
        brand.destroy
        render json: {status: 'SUCCESS', message: 'Deleted brand', data: brand}, status: :ok
    end

    private

    def brand_params
        params.require(:brand).permit(:name, :country_of_origin)
    end
end
