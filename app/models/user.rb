class User < ActiveRecord::Base
  #  has_attached_file :avatar,
  #  :path => ":rails_root/public/system/assets/uploads/:id/:basename_:style.:extension",
  #  :url => "/system/:class/:attachement/:id/:basename_:style.:extension",
  #  :styles => {
  #    :thumb    => ['100x100#',  :jpg, :quality => 70],
  #    :preview  => ['480x480#',  :jpg, :quality => 70],
  #    :large    => ['600>',      :jpg, :quality => 70],
  #    :retina   => ['1200>',     :jpg, :quality => 30]
  #  },
  #  :convert_options => {
  #    :thumb    => '-set colorspace sRGB -strip',
  #    :preview  => '-set colorspace sRGB -strip',
  #    :large    => '-set colorspace sRGB -strip',
  #    :retina   => '-set colorspace sRGB -strip -sharpen 0x0.5'
  #  },

  #validates_attachment :avatar,
  #  :presence => true,
  #  :size => { :in => 0..10.megabytes },
  #  :content_type => { :content_type => /^image\/(jpeg|png|gif|tiff)$/ }

  #validates :name,
  #  :presence => true,
  #  :uniqueness => true

  #validates_attachment_content_type :avatar, :content_type => /.*/
  #crop_attached_file :avatar, :aspect => "4:3"


  has_attached_file  :avatar, :styles => {:thumb => "40x30", :medium => "400x300"},
                               :path   => ":rails_root/public/assets/uploads/user/:id_:style.:extension",
                               :url    => "/assets/uploads/user/:id_:style.:extension"
  validates_attachment_content_type :avatar, :content_type => /.*/
  crop_attached_file :avatar, :aspect => "4:3"

end
