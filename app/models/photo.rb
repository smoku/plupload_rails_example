class Photo < ActiveRecord::Base
  attr_accessible :file
  
  has_attached_file :file, :styles => { 
                              :thumb => "100x100#",
                              :normal => "600x600>", 
                              },
                            :url => "/system/photos/:id/:style.:extension",
                            :path => ":rails_root/public/system/photos/:id/:style.:extension"
                            
  validates_attachment_presence :file
  validates_attachment_content_type :file, :content_type => [/image\/jpg/, /image\/jpeg/, /image\/pjpeg/, /image\/gif/, /image\/png/, /image\/x-png/]
  
end
