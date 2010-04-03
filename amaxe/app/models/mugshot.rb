class Mugshot < ActiveRecord::Base
  
  has_attachment :content_type => :image, 
                 :storage => :file_system, 
                 :max_size => 500.kilobytes,
                 :resize_to =>  '100x100>', 
                 :thumbnails => { :thumb => '100x100>' }, 
                :processor => :MiniMagick
  validates_as_attachment
#def resize_image(img, size)
#    img.crop_resized!(500, 500, Magick::CenterGravity)
#    # pass the crop/resized image to attachment_fu
#    super
#
#
#end
#def resize_image(img, size, compress=false)
#  size = size.first if size.is_a?(Array) && size.length == 1 && !size.first.is_a?(Fixnum)
#  if size.is_a?(Fixnum) || (size.is_a?(Array) && size.first.is_a?(Fixnum))
#    size = [size, size] if size.is_a?(Fixnum)
#    img.thumbnail!(*size)
#  else
#    img.change_geometry(size.to_s) {|cols, rows, image|
#      image.resize!(cols<1 ? 1 : cols, rows<1 ? 1 : rows)
#    }
#  end
#  if compress && !self.thumbnail
#    self.temp_path = write_to_temp_file(img.to_blob {self.quality = 75})
#  elsif self.thumbnail
#    self.temp_path = write_to_temp_file(img.to_blob {self.quality = 90})
#  else
#    self.temp_path = write_to_temp_file(img.to_blob)
#  end
#end
end

