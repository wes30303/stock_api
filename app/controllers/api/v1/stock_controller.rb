class Api::V1::StockController < ApplicationController
  def index
        results = StockSearchFacade.get_name(search_params[:search])
        new = StockSearchFacade.get_stock_price(results)
        render json: new
      end

      private

      def search_params
        params.permit(:search)
      end
end
