#---
# Excerpted from "Agile Web Development with Rails, 3rd Ed.",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails3 for more book information.
#---

class UploadController < ApplicationController
  def get
       @lcategories = Category.find_category_for_sale
   @tcategories = Category.find_category_for_top
    @picture = Picture.new
  end
  # . . .



  def save
    @picture = Picture.new(params[:picture])
    if @picture.save
      redirect_to(:action => 'show', :id => @picture.id)
    else
      render(:action => :get)
    end
  end



  def show
      @lcategories = Category.find_category_for_sale
   @tcategories = Category.find_category_for_top
    @picture = Picture.find(params[:id])
  end



  def picture
    @picture = Picture.find(params[:id])
    send_data(@picture.data,
              :filename => @picture.name,
              :type => @picture.content_type,
              :disposition => "inline")
  end


end


