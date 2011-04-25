class Micropost < ActiveRecord::Base
  attr_accessible :content
  attr_accessible :image
  
  belongs_to :user 

  validates :content, :presence => true, :length => { :maximum => 140 }
  validates :user_id, :presence => true
  #validates_attachment_presence :image

  default_scope :order => 'microposts.created_at DESC'
  has_attached_file :image, :url => "/:class/:attachment/:id/:style_:basename.:extension", :path => ":rails_root/public/:class/:attachment/:id/:style_:basename.:extension"
  #has_attached_file :photo, :path => ":rails_root/public/:class/:attachment/:id/:style_:basename.:extension"

end
