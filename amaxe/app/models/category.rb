class Category < ActiveRecord::Base
    #has_and_belongs_to_many :products
    has_many :products
    validates_presence_of :title, :description, :position, :action
    validates_length_of :title, :minimum => 2, :message => 'must be greater than 2 character'

    def self.find_category_for_sale
      find(:all,:conditions => "action = 'A' and position = 'left'", :order => 'id')
    end
    
    def self.find_category_for_top
      find(:all,:conditions => "action = 'A' and position = 'top'", :order => 'id')
    end
    
    def self.find_category_for_q
      find(:all,  :joins =>  'JOIN products ON categories.id = products.cat_id')
    end
    
    HEADER_LOCATION = [["TOP", "top"], ["LEFT", "left"]]
    ACTION = [["Active", "A"], ["Inactive", "I"]]
end
