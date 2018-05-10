class Article < ApplicationRecord 
	# ApplicationRecord inherits from ActiveRecord::Base
	# ActiveRecord::Base supplies a large amount of functionality, including CRUD
	validates :title, presence: true, length: { minimum: 5 }
	# When validation fails on save, @article.save will return false
end
