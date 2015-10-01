class Review < ActiveRecord::Base
	belongs_to :fost
	belongs_to :user
end
