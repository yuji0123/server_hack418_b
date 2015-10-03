class User < ActiveRecord::Base
	has_one :now
	has_many :matches
end
