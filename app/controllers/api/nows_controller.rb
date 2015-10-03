module Api
  class ProductsController < ApplicationController

    def reset

      render json: @products
    end
  end

  ...
end