module Backend
 class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  def new
    @product = Product.new
  end

  def index
  #  @presenter = ProductPresenter.new(params)
    @products = Product.all
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      flash[:notice] = 'Creado'
      redirect_to backend_products_path
    else
      flash.now[:alert] = 'Error'
      render :new
   end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      flash[:notice] = 'Éxito'
      redirect_to [:backend, @product]
    else
      flash.now[:alert] = 'Error'
      render :edit
    end
  end

  def destroy
    @product.destroy
    flash[:notice] = 'Eliminado'
    redirect_to backend_products_path
  end

  private
  def product_params
    ## strong parameters
    params.require(:product).permit(
      :name,
      :internalCode,
      :category_id,
      :tag_id,
      :praice,
      :cost,
      :description,
      :activo,
      :image
    )
  end

  def set_product
    @product = Product.find(params[:id])
  end
 end
end
