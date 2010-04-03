class StoreController < ApplicationController
 
  def index
#    @lcategories = Category.find_category_for_sale
#    @tcategories = Category.find_category_for_top
#    @header_footer = HeaderFooter.find(11)
   session[:catl] = Category.find_category_for_sale
   session[:catt]= Category.find_category_for_top
   session[:head_foot]= HeaderFooter.find(11)
   logger.info(session[:catt]) 
   logger.info("------------------------------------")
  rescue ActiveRecord::RecordNotFound
        logger.error("Attemp to access invalid product ")
        redirect_to :action => 'index'
  end

    def desc
#       @lcategories = Category.find_category_for_sale
#       @tcategories = Category.find_category_for_top
#       @header_footer = HeaderFooter.find(11)
       @category = Category.find(params[:id])
       @products = Product.paginate(:page => params[:page],
                                :conditions => ['categories.id= ?', params[:id] ], 
                          #  :include => :categories, 
                          #  :include => :categories, 
                            :joins =>  'JOIN categories ON categories.id = products.cat_id' ,    
                            
                            :per_page => 6 , :order => "title")
    for p in @products
    logger.info(p.public_filename)
    end
    rescue ActiveRecord::RecordNotFound
        logger.error("Attemp to access invalid product ")
        redirect_to :action => 'index'
    end
    
    def gmap

        @map = GMap.new("map_div")

        @map.control_init(:large_map => true,:map_type => true)

        @map.center_zoom_init([22.792388,79.497070],4)

        @map.overlay_init(GMarker.new([22.792388,79.497070],:title =>"India", :info_window =>"India"))

        @map.record_init @map.add_overlay(GMarker.new([22.792388, 72.421875],:title =>"Ahmedabad", :info_window =>"Ahmedabad"))

    end
    protected
    
        def authorize
        end
  
    
end
