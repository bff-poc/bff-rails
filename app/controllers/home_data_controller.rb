class HomeDataController < ApplicationController
    def index
      response = HTTParty.get('http://localhost:3000/data')  # Certifique-se de incluir a gem 'httparty' no seu Gemfile

      if response.code == 200
        render json: response.parsed_response, status: :ok
      else
        render json: { error: 'Erro ao solicitar dados do backend Rails' }, status: :internal_server_error
      end
    end
end
