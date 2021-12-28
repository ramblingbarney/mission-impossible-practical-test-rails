require 'rails_helper'

RSpec.describe "get all photos for a specified album resource", :type => :request do

  before {get '/photos?albumId=1'}

  it 'returns all photos for an album' do
    expect(JSON.parse(response.body).size).to eq(50)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
