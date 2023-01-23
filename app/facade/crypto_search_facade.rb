class CryptoSearchFacade

  def self.get_crypto_name(name)
    data = CryptoSearchService.get_crypto_name(name)
    CryptoSearch.new(data)
  end

end
