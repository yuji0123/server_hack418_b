class MatchesController < ApplicationController
  	before_action :set_match, only: [:getpost]

  	def index
  		@nows = Now.new
  		render 'index'
	end
# 一緒にいる事をポストするメソッド
    def getpost
      now_user01 = Now.find(match_params[:user_id])
      now_user02 = Now.find(match_params[:user_id_2])
    	was_point01 = now_user01.point
      was_point02 = now_user02.point
    	next_point01 = was_point01 + 2
      next_point02 = was_point02 + 1
    	now_user01.update_attribute(:point => next_point01)
      now_user02.update_attribute(:point => next_point02)
    	@nows = Now.joins(:user).select('users.name, nows.*').where('').order('point desc').all
		render json: @nows
    end

    def set_match
      @match01 = Match.find(match_params[:user_id])
      @match02 = Match.find(match_params[:user_id_2])
    end

    def match_params
    params.require(:match).permit(:user_id, :user_id_2, :position_x, :position_y)
    end

    private
    def search_nearest

    end
  end
