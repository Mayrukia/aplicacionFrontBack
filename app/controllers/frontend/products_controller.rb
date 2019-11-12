module Frontend
 class ProductsController < FrontendController
  def index
    @presenter = ProductPresenter.new(params)
    byebug
  end

  def show
    @product = Product.find(params[:id]).decorate
  end

  private
  def product_params
    ## strong parameters
    params.require(:product).permit(:name,:category_id,:image)
  end
 end
end
