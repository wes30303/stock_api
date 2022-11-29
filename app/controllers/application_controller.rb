class ApplicationController < ActionController::API
  def render_stock(stock)
    render json: StockSerializer.format_stock(stock)
  end
end
