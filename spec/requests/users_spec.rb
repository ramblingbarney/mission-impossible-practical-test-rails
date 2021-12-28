require 'rails_helper'

RSpec.describe "get a single user resource", :type => :request do

  before {get '/users/1'}

  it 'returns a single user' do
    result = JSON.parse(response.body)

    expect(result['email']).to eq('Sincere@april.biz')
    expect(result['id']).to eq(1)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end

end
