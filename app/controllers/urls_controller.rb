class UrlsController < ApplicationController

  def index

  end

  def new

  end

  def create
    Url.create(url_params)
    redirect_to '/urls'
  end

  def url_params
    params.require(:url).permit(:original)
  end

end
