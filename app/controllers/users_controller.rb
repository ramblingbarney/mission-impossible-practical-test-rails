class UsersController < ApplicationController
  require File.join(Rails.root, "lib/results.rb")

  def show
    @user = Results.new
    render json: @user.get('/users/' + params[:id], 'user').body, status: 200
  end
  
  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.permit(:id)
    end
end
