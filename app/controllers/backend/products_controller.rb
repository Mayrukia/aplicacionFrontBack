module Backend
  class ProductsController < ApplicationController
    before_action :set_product, only: [:show, :edit, :update, :destroy]

    def new
      @product = Product.new
    end

    def index
      @products = Product.all
    end

    def create
      @product = Product.new(product_params)
      if @product.save
        redirect_to backend_products_path
      else
        render :new
     end
    end

    def show
    end

    def edit
    end

    def update
      @product.update product_params
      redirect_to @product
    end
    def destroy
      @product.destroy
    end

    private
    def product_params
      ## strong parameters
      params.require(:product).permit(:name, :internalCode, :category_id, :tag_id, :praice, :cost, :content, :activo)
    end

    def set_product
      @product = Product.find(params[:id])
    end
  end
end
