class CryptoSearchService
  def self.get_crypto_name(name)
    response = conn.get('/api/v3/search') do |route|
      route.params['query'] = name
    end
    parse_json(response)
  end

  def self.top_7
    response = conn.get('/api/v3/coins/markets') do |route|
      route.params['vs_currency'] = "Usd"
      route.params['order'] = "market_cap_desc"
      route.params['per_page'] = "10"
    end
    parse_json(response)
    binding.pry
  end

  private

  def self.conn
    Faraday.new(url: 'https://api.coingecko.com')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
