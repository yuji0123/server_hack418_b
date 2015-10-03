  class NowsController < ApplicationController
    def reset
    	@noew = Nows.all
      render json: @nows
    end
  end
