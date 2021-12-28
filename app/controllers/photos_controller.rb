class PhotosController < ApplicationController
  require File.join(Rails.root, "lib/results.rb")

  def show
    @photo = Results.new
    render json: @photo.query('/photos', params).body, status: 200
  end
end
