class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def new
    @url = Url.new
  end

  def create
    Url.create(url_params)

    redirect_to root_path
  end

  private

  def url_params
    params.require(:url).permit(:original)
  end
end
