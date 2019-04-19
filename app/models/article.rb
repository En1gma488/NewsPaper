class Article < ApplicationRecord

	belongs_to :articles_source, class_name: "ArticlesSources", optional: true
	
end
