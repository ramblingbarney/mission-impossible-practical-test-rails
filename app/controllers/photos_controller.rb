class PhotosController < ApplicationController
  require File.join(Rails.root, "lib/results.rb")

  def show
    @photo = Results.new
    render json: @photo.query('/photos', params, 'photos').body, status: 200
  end
  
  private
    # Only allow a list of trusted parameters through.
    def photo_params
      params.permit(:id, :album_id)
    end
end
