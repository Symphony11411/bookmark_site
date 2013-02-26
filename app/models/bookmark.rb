class Bookmark < ActiveRecord::Base
  attr_accessible :datesaved, :name, :url
  validates :name, :length => { :minimum =>2, :maximum => 40 }
  validates :url, :length => { :minimum =>5, :maximum => 240 }
end
