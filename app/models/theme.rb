class Theme < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 66 }
  validates :info, presence: true
  validates :keywords, :presence => true, :length => { :maximum => 6000 }
  validates :info, :presence => true, :length => { :maximum => 1200 }
  validates :percentage, :numericality => { :greater_than => 0, :less_than_or_equal_to => 100 }

  has_attached_file :image, styles: { banner: "1600x333>", thumb: "1200x333>" }, default_url: "waves.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  belongs_to :user
end
