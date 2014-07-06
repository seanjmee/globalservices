class Project < ActiveRecord::Base
  belongs_to :comic
  validates :comic_id, presence: true

  before_validation :integize

  def comic
  end

  def integize
  	puts self.comic_id 
  end

end
