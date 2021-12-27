class AlbumsController < ApplicationController
  require File.join(Rails.root, "lib/results.rb")

  def index
    @albums = Results.new
    render json: @albums.get('/albums').body, status: 200
  end

  def show
    @album = Results.new
    render json: @album.get('/album/' + params[:id]).body, status: 200
  end
end
