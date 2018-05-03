class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    if session[:conter].nil?
      @conter = 0
      session[:conter] = @conter
    end
    @conter = session[:conter]
    @conter += 1
    session[:conter] = @conter
  end
end
