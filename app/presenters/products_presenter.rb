class ProductsPresenter
  def initialize(params)
    @params = params
  end

  def posts
    @posts ||= filter.call.paginate(page: @params[:page], per_page: 5).decorate
  end

  def filter
    @filter ||= PostsFilter.new(filter_params)
  end

  private
  def filter_params
    @params[:filter] ? @params.require(:filter).permit(:query, :category_id) : {}
  end
end
