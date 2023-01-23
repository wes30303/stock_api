class Api::V1::CryptoController < ApplicationController
  def index
        results = CryptoSearchFacade.get_crypto_name(search_params[:search])
        render json: results
      end

      private

      def search_params
        params.permit(:search)
      end
end
