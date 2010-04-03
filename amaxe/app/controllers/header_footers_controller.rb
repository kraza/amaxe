class HeaderFootersController < ApplicationController
  # GET /header_footers
  # GET /header_footers.xml
  def index
    @header_footers = HeaderFooter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @header_footers }
    end
  end
    
#  def get
#    @picture = Picture.new
#  end
#  
#  def save
#  @picture = Picture.new(params[:picture]) 
#  if @picture.save
#    redirect_to(:action => 'show' , :id => @picture.id)
#  else
#    render(:action => :get)
#  end
#end
    def picture
      @header_footer = HeaderFooter.find(params[:id])
                send_data(@header_footer.fdata,
                :filename => @header_footer.logo,
               # :type => @header_footer.content_type,
                :disposition => "inline" )
    end
    
    def picture1
      @header_footer = HeaderFooter.find(params[:id])
                send_data(@header_footer.hdata,
                :filename => @header_footer.logo,
               # :type => @header_footer.content_type,
                :disposition => "inline" )
    end
    
    def picture2
      @header_footer = HeaderFooter.find(params[:id])
                send_data(@header_footer.td1,
                :filename => @header_footer.t1,
               # :type => @header_footer.content_type,
                :disposition => "inline" )
    end
    
    def picture3
      @header_footer = HeaderFooter.find(params[:id])
                send_data(@header_footer.td2,
                :filename => @header_footer.t2,
               # :type => @header_footer.content_type,
                :disposition => "inline" )
    end
    
    def picture4
      @header_footer = HeaderFooter.find(params[:id])
                send_data(@header_footer.td3,
                :filename => @header_footer.t3,
               # :type => @header_footer.content_type,
                :disposition => "inline" )
    end
    
    def picture5
      @header_footer = HeaderFooter.find(params[:id])
                send_data(@header_footer.bd1,
                :filename => @header_footer.b1,
               # :type => @header_footer.content_type,
                :disposition => "inline" )
    end
    
    def picture6
      @header_footer = HeaderFooter.find(params[:id])
                send_data(@header_footer.bd2,
                :filename => @header_footer.b2,
               # :type => @header_footer.content_type,
                :disposition => "inline" )
    end
    
    def picture7
      @header_footer = HeaderFooter.find(params[:id])
                send_data(@header_footer.bd3,
                :filename => @header_footer.b3,
               # :type => @header_footer.content_type,
                :disposition => "inline" )
    end

  # GET /header_footers/1
  # GET /header_footers/1.xml
  def show
    @header_footer = HeaderFooter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @header_footer }
    end
  end

  # GET /header_footers/new
  # GET /header_footers/new.xml
  def new
    @header_footer = HeaderFooter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @header_footer }
    end
  end

  # GET /header_footers/1/edit
  def edit
    @header_footer = HeaderFooter.find(params[:id])
  end

  # POST /header_footers
  # POST /header_footers.xml
  def create
    
    @header_footer = HeaderFooter.new(params[:header_footer])

    respond_to do |format|
      if @header_footer.save
        flash[:notice] = 'HeaderFooter was successfully created.'
        format.html { redirect_to(@header_footer) }
        format.xml  { render :xml => @header_footer, :status => :created, :location => @header_footer }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @header_footer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /header_footers/1
  # PUT /header_footers/1.xml
  def update
    @header_footer = HeaderFooter.find(params[:id])

    respond_to do |format|
      if @header_footer.update_attributes(params[:header_footer])
        flash[:notice] = 'HeaderFooter was successfully updated.'
        format.html { redirect_to(header_footers_url) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @header_footer.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /header_footers/1
  # DELETE /header_footers/1.xml
  def destroy
    @header_footer = HeaderFooter.find(params[:id])
    @header_footer.destroy

    respond_to do |format|
      format.html { redirect_to(header_footers_url) }
      format.xml  { head :ok }
    end
  end
end
