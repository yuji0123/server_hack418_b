  class NowsController < ApplicationController
  	before_action :set_reset, only: [:reset]

  	def index
  		@nows = Now.new
  		render 'index'
	end

# POSTしてきたユーザの情報を登録し、近くにいるユーザを返してあげるメソッド
    def reset
    	was_point = @nows.point
    	next_point = was_point + 1
    	@nows.update_attributes(:now_position_x => now_params[:now_position_x], :now_position_y => now_params[:now_position_y], :point => next_point)

    	logger.debug()
    	      # 近くにいるユーザをnowテーブルから取得、近い順にソートして引き渡し
    	less_x = now_params[:now_position_x].to_f - 0.1
    	more_x = now_params[:now_position_x].to_f + 0.1
    	less_y = now_params[:now_position_y].to_f - 0.1
    	more_y = now_params[:now_position_y].to_f + 0.1
    	@nows = Now.joins(:user).select('users.name, nows.*').where('nows.now_position_x < ? AND nows.now_position_x > ? AND nows.now_position_y < ? AND nows.now_position_y > ?', more_x, less_x, more_y, less_y).all
    	# 選別、もうPOSTしている人は省く

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
