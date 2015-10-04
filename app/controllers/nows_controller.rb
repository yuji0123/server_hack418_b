  class NowsController < ApplicationController
  	before_action :set_reset, only: [:reset]

  	def index
  		@nows = Now.new
  		render 'index'
	end

    def reset
    	was_point = @nows.point
    	next_point = was_point + 1
    	@nows.update_attributes(:now_position_x => now_params[:now_position_x], :now_position_y => now_params[:now_position_y], :point => next_point)
    	@nows = Now.joins(:user).select('users.name, nows.*').order('point desc').all
		render json: @nows
    end

    def set_reset
      @nows = Now.find(now_params[:user_id])
    end

    def now_params
    params.require(:now).permit(:user_id, :now_position_x, :now_position_y, :point)
    end

    private
    def search_nearest

    end
  end
