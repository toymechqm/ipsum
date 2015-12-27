class Theme < ActiveRecord::Base
  validates :title, presence: true
  validates :info, presence: true
  validates :keywords, :presence => true, :length => { :maximum => 6000 }
  validates :info, :presence => true, :length => { :maximum => 1200 }

  belongs_to :user
end
