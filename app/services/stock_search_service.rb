class StockSearchService
  def self.get_name(name)
    response = conn.get('/query/') do |route|
      route.params['keywords'] = name
      route.params['function'] = "SYMBOL_SEARCH"
    end
    parse_json(response)
  end

  def self.get_stock_price(price)
    response = conn.get('/query/') do |route|
      route.params['function'] = "GLOBAL_QUOTE"
      route.params['symbol'] = price.name
      route.params['datatype'] = "json"
    end
    parse_json(response)
  end

  private

  def self.conn
    Faraday.new(url: 'https://alpha-vantage.p.rapidapi.com') do |faraday|
      faraday.headers['X-RapidAPI-Key'] = ENV.fetch('stock_api_key', nil)
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
