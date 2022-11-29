class StockSerializer
  def self.format_stock(stock)
    binding.pry
    stock.map do |stock|
      {
        stock: stock.name,
        open: stock.open,
        high: stock.high,
        low: stock.low,
        current_price: stock.current_price,
        volume: stock.volume,
        price_change: stock.price_change,
        precent_change: stock.precent_change,
      }
    end
  end
end
