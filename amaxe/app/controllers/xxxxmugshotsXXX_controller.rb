class MugshotsController < ApplicationController

  def new
      @lcategories = Category.find_category_for_sale
    @tcategories = Category.find_category_for_top
    @header_footer = HeaderFooter.find(11)
    @mugshot = Mugshot.new
  end

  def show
    @lcategories = Category.find_category_for_sale
    @tcategories = Category.find_category_for_top
    @header_footer = HeaderFooter.find(11)
   @mugshots = Mugshot.new(params[:mugshot])

  end
  def create
    @mugshot = Mugshot.new(params[:mugshot])

    if @mugshot.save
      flash[:notice] = "Mugshot was successfully created."
      redirect_to mugshot_url(@mugshot)
    else
      render :action => 'new'
    end
  end
end

