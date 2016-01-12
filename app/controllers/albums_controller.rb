class AlbumsController < ApplicationController
  def index
    @album=Album.find(params[:article_id])
  end
end
