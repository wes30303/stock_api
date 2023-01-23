class CryptoSearchService
  def self.get_crypto_name(name)
    response = conn.get('/api/v3/search') do |route|
      route.params['query'] = name
    end
    parse_json(response)
  end

  private

  def self.conn
    Faraday.new(url: 'https://api.coingecko.com')
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
