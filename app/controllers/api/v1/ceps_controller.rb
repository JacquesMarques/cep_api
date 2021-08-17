class Api::V1::CepsController < Api::ApplicationController
  before_action :set_base_url

  # GET /ceps/12345678
  def show
    url = @base_url + params[:id]
    response = Rails.cache.fetch([url], :expires => 2.days) do
      HTTParty.get(url, :headers => { 'cache-control': 'no-cache', 'Accept': 'application/json' })
    end
    if response.present?
      Cep.create({
        cep: response['cep'],
        uf: response['uf'],
        cidade: response['cidade'],
        bairro: response['bairro'],
        logradouro: response['logradouro'],
        user_id: current_api_user.id
      })
    else
      response = 'Cep not found'
    end
    render json: response
  end

  private

  def set_base_url
    @base_url = 'http://cep.la/'
  end

end