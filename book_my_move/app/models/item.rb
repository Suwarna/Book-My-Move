


class Item < ActiveRecord::Base
	
  belongs_to :subcategory
	
	has_many :requirementitems

	has_many :requirements, through: :requirementitems

#attr_accessor :item_image_file_name       this only works in Rails 4
has_attached_file :item_image,
:path => ":rails_root/public/system/:class/:attachement/:id/:basename_:style.:extension",
:url => "/system/:class/:attachement/:id/:basename_:style.:extension",
:styles => {
:thumb => ['100x100#', :jpg, :quality => 70],
:preview => ['480x480#', :jpg, :quality => 70],
:large => ['600>', :jpg, :quality => 70],
:retina => ['1200>', :jpg, :quality => 30]
},


:convert_options => {
:thumb => '-set colorspace sRGB -strip',
:preview => '-set colorspace sRGB -strip',
:large => '-set colorspace sRGB -strip',
:retina => '-set colorspace sRGB -strip -sharpen 0x0.5'
}


validates_attachment :item_image,
:presence => true,
:size => { :in => 0..10.megabytes },
:content_type => { :content_type => /^image\/(jpeg|png|gif|tiff)$/ }
validates :item_name,
:presence => true


end
