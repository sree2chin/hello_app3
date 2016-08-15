class StaticPagesController < ApplicationController

  def home
    if logged_in?
      @micropost  = current_user.microposts.build
    end
    @feed_items = Micropost.all.paginate(page: params[:page])
    
  end

  def help
  end

  def about
  end

  def contact
  end
end