class AlbumsController < ApplicationController
  require File.join(Rails.root, "lib/results.rb")

  def index
    @albums = Results.new
    render json: @albums.get('/albums', 'albums').body, status: 200
  end

  def show
    @album = Results.new
    render json: @album.get('/albums/' + params[:id], 'one_album').body, status: 200
  end

  def user
    @album = Results.new
    render json: @album.query('/albums', params).body, status: 200
  end
  private
    # Only allow a list of trusted parameters through.
    def album_params
      params.permit(:id, :user_id)
    end
end
