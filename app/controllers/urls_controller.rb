class UrlsController < ApplicationController

  def index
    @url = Url.new
    @urls = Url.all
  end

  def create
    @url = Url.create(url_params).generate_key
    redirect_to '/urls'
  end

  def url_params
    params.require(:url).permit(:original)
  end

  def go
    @url = Url.find_by_key!(params[:key])
    redirect_to @url.original, :status => 301
  end

end
