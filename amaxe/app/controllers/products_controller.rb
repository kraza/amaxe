class ProductsController < ApplicationController
  # GET /products
  # GET /products.xml


  def index
      
    case params[:filter]
      when "Title" then t1 = "products.title";  t2 = "title"
      when "Catageory" then t1 = "categories.title"; t2 = "title"
      when "Status" then t1 = "products.action"; t2 = "action"
      end
      
#      sort = case params[:sort]
#           when "Title"  then "title"
#           when "Catageory"   then "cat_t"
#           when "Status" then "action"
#           when "title_reverse"  then "title DESC"
#           when "cat_t_reverse"   then "cat_t DESC"
#           when "action_reverse" then "action DESC"
#           end
     logger.info(params[:sort])
      sort="products.title"
      if params[:sort]
          sort=params[:sort]
      end
      logger.info(params[:sort])
    conditions = ["#{t2} LIKE ?", "%#{params[:query]}%"] unless params[:query].nil?
    @total = case params[:filter]
      when "Title" then Product.count( :conditions => conditions)
      when "Catageory" then Category.count( :conditions => conditions)
      when "Status" then Product.count( :conditions => conditions)
      end
        
    conditions = ["#{t1} LIKE ?", "%#{params[:query]}%"] unless params[:query].nil?
    @products = Product.paginate :page => params[:page], :per_page => 5, :order =>"#{sort}" ,:joins =>  'JOIN categories ON categories.id = products.cat_id' ,:select => 'products.*,categories.title as cat_t', :conditions => conditions
    if request.xml_http_request?
      render :partial => "items_list", :layout => false
    end

##      @lcategories = Category.find_category_for_sale
##    @tcategories = Category.find_category_for_top
##    @header_footer = HeaderFooter.find(11)
#   #@test=Category.find_category_for_q
#    @products = Product.paginate(:page => params[:page],
#                          #  :include => :categories, 
#                          #  :include => :categories, 
#                            :joins =>  'JOIN categories ON categories.id = products.cat_id' ,
#                            :select => 'products.*,categories.title as cat_t', 
#                            :per_page => 6 , :order => "title")
##  for  product in @test.product
##  logger.info(product.id)
##  end
#    respond_to do |format|
#      format.html # index.html.erb
#      format.xml  { render :xml => @products }
#    end
  end
  
  def view
      @product = Product.find(params[:id])
 end

  # GET /products/1
  # GET /products/1.xml
  def show
#    @lcategories = Category.find_category_for_sale
#    @tcategories = Category.find_category_for_top
#    @header_footer = HeaderFooter.find(11)
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/new
  # GET /products/new.xml
  def new
#    @lcategories = Category.find_category_for_sale
#    @tcategories = Category.find_category_for_top
#    @header_footer = HeaderFooter.find(11)
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product }
    end
  end

  # GET /products/1/edit
  def edit
#    @lcategories = Category.find_category_for_sale
#    @tcategories = Category.find_category_for_top
#    @header_footer = HeaderFooter.find(11)
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.xml
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        flash[:notice] = 'Product was successfully created.'
        format.html { redirect_to(@product) }
        format.xml  { render :xml => @product, :status => :created, :location => @product }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.xml
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        flash[:notice] = 'Product was successfully updated.'
        format.html { redirect_to(@product) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.xml
  def destroy
#     @lcategories = Category.find_category_for_sale
#    @tcategories = Category.find_category_for_top
#    @header_footer = HeaderFooter.find(11)
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to(products_url) }
      format.xml  { head :ok }
    end
  end
  
#  def display_data
#    @display_data = LocationData.paginate(:page => params[:page],
#    :conditions => ["loc.updated_at < ?", params[:date]],
#    :joins => "as loc inner join location_address as locadd on loc.id = locadd.id", :per_page => 10,
#    :order => "location_name")
#end
  

    def list


    sort = case params['sort']
           when "Title"  then "title"
           when "Catageory"   then "cat_t"
           when "Status" then "action"
           when "title_reverse"  then "title DESC"
           when "cat_t_reverse"   then "cat_t DESC"
           when "action_reverse" then "action DESC"
           end

    conditions = ["title LIKE ?", "%#{params[:query]}%"] unless params[:query].nil?

    @total = Product.count(:conditions => conditions)
     @accounts = Product.paginate :page => params[:page], :per_page => 5, :order => sort, :conditions => conditions
    if request.xml_http_request?
      render :partial => "items_list", :layout => false
    end

  end  
  
end
