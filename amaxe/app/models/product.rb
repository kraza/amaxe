class Product < ActiveRecord::Base
    belongs_to :category
    #has_and_belongs_to_many :categories
    has_attachment :content_type => :image, 
                :storage => :file_system, 
                :max_size => 500.kilobytes,
                :resize_to =>  '320x250>', 
                :processor => :MiniMagick
#    has_attachment :content_type => :image, 
#                 :storage => :file_system, 
#                 :max_size => 500.kilobytes,
#                 :resize_to =>  '320x250>', 
#                 :thumbnails => { :thumb => '75x80>' }, 
#                 :processor => :MiniMagick
#  
#
#
    validates_as_attachment
    ACTION = [["Active", "A"], ["Inactive", "I"]]
end
