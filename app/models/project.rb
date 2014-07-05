class Project < ActiveRecord::Base
  belongs_to :comics

  def comic
  end
end
