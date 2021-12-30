class UsersController < ApplicationController
  require File.join(Rails.root, "lib/results.rb")

  def show
    @user = Results.new
    render json: @user.get('/users/' + params[:id], 'user').body, status: 200
  end
end
