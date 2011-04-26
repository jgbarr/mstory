class Micropost < ActiveRecord::Base
  attr_accessible :content
  attr_accessible :image
  
  belongs_to :user 

  validates :content, :presence => true, :length => { :maximum => 140 }
  validates :user_id, :presence => true
  #validates_attachment_presence :image

  default_scope :order => 'microposts.created_at DESC'
  has_attached_file :image,
    :storage => :s3,
  :s3_credentials => {
    :access_key_id => ENV['S3_KEY'],
    :secret_access_key => ENV['S3_SECRET']
  },
  :bucket => ENV['S3_BUCKET'],
  :path => ":attachment/:id"

end
