require 'rails_helper'

RSpec.describe "get all albums resource", :type => :request do

  before {get '/albums'}

  it 'returns all albums' do
    expect(JSON.parse(response.body).size).to eq(100)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

RSpec.describe "get a single album resource", :type => :request do

  before {get '/album/1'}

  it 'returns a single album' do
    result = JSON.parse(response.body)

    expect(result['title']).to eq('quidem molestiae enim')
    expect(result['id']).to eq(1)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end

RSpec.describe "get all albums for a specified user resource", :type => :request do

  before {get '/albums?userId=1'}

  it 'returns all albums for a user' do
    expect(JSON.parse(response.body).size).to eq(100)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
