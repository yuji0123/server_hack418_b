  class NowsController < ApplicationController
    def reset
    	@nows = Nows.all
      render json: @nows
    end
  end
