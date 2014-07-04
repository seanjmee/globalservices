class Comic < ActiveRecord::Base
	has_many :projects
	validates :title, presence: true, uniqueness: true
end
