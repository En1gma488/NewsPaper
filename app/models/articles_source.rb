class ArticlesSource < ApplicationRecord

	has_many :users , through: :user_sources
	has_many :user_sources
	has_many :articles

end
