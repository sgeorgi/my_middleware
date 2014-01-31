require 'spec_helper'

describe MyMiddleware do

  describe 'GET /' do
    let(:response) { get '/' }

    it 'returns with status 200' do
      expect(response.status).to be == 200
    end

    it "renders 'Hello Middleware'" do
      expect(response.body).to include('Hello Middleware')
    end
  end
end

describe SassHandler do

  describe 'GET /css/my_middleware.css' do
    let(:response) { get '/css/my_middleware.css' }

    it 'returns with status 200' do
      expect(response.status).to be == 200
    end
  end

end

describe CoffeeHandler do

  describe 'GET /js/my_middleware.js' do
    let(:response) { get '/js/my_middleware.js' }

    it 'returns with status 200' do
      expect(response.status).to be == 200
    end
  end

end