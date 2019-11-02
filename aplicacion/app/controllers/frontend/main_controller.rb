module Frontend
  class MainController < ApplicationController
    def index; end
  end
  def products
     @products = Product.all
   end
end
