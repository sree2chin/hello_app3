class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost  = current_user.microposts.build
    else
      @micropost = []
    end
    @feed_items = Micropost.all.paginate(page: params[:page])
  end
  
  def filter
    if logged_in?
      @micropost  = current_user.microposts.build
    end
    puts "...-==============================****xxxxx"
    puts micropost_params[:typeofpost]
    puts "...-==============================****xxxxx"
    puts micropost_params[:location]
    
    @feed_items = Micropost.where(:location => micropost_params[:location], :typeofpost => micropost_params[:typeofpost])
  end

  def help
  end

  def about
  end

  def contact
  end
  private 
    def micropost_params
      params.require(:micropost).permit(:location, :typeofpost)
    end
end