  class NowsController < ApplicationController
  	def index
  		render 'index'
	end

    def reset
    	@nows = Now.all
      render json: @nows
    end
  end
