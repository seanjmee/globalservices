class Comic < ActiveRecord::Base
	has_many :projects
	validates :title, presence: true, uniqueness: true

	def name_to_select 
		title
	end
end
