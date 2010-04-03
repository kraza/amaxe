class UloadController < ApplicationController
  def index
     render :file => 'app/views/uload/uloadfile.html.erb'
  end
  def uploadFile
    post = DataFile.save(params[:upload])
    render :text => "File has been uploaded successfully"
  end
  
 def new
  @mugshot = Mugshot.new
end

def create
  @mugshot = Mugshot.new(params[:mugshot])
  if @mugshot.save
    flash[:notice] = 'Mugshot was successfully created.'
    redirect_to mugshot_url(@mugshot)     
  else
    render :action => :new
  end
end


end

