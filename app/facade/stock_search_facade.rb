class StockSearchFacade

  def self.get_name(name)
    data = StockSearchService.get_name(name)
    StockSearch.new(data)
  end

  def self.get_stock_price(price)
    data = StockSearchService.get_stock_price(price)
    StockPrice.new(data)
  end

end
