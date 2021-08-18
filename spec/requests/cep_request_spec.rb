# spec/request/ceps_request_spec.rb

require 'rails_helper'

RSpec.describe Api::V1::CepsController do
  describe 'GET #index' do
    before do
      get "/api/v1/ceps", as: :json, headers: {:Authorization => "Token eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHBpcnkiOjE2MjkyNDc0OTh9.8KyYGZVD3TKJ5P_iTuEZpWpl2a3Lm64nWJftWFMkn4c"}
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end

    it "JSON body response contains expected cep attributes" do
      expect(response.body).to include 'user_id'
      expect(response.body).to include 'cep'
      expect(response.body).to include 'uf'
      expect(response.body).to include 'cidade'
      expect(response.body).to include 'logradouro'
      expect(response.body).to include 'bairro'
    end
  end

  describe 'GET #index/:id' do
    before do
      get "/api/v1/ceps/74590690", as: :json, headers: {:Authorization => "Token eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHBpcnkiOjE2MjkyNDc0OTh9.8KyYGZVD3TKJ5P_iTuEZpWpl2a3Lm64nWJftWFMkn4c"}
    end

    it "returns http success" do
      expect(response).to have_http_status(:success)
    end
  end

end