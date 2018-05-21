class Article < ApplicationRecord 
	# ApplicationRecord inherits from ActiveRecord::Base
	# ActiveRecord::Base supplies a large amount of functionality, including CRUD
	# associates articles with their comments:
	has_many :comments, dependent: :destroy
	# When validation fails on save, @article.save will return false
	validates :title, presence: true, length: { minimum: 5 }
	
end
