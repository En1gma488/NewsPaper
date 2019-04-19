class UserSourse < ApplicationRecord

	belongs_to :user 
	belongs_to :articles_source
	
end
