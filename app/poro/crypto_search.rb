class CryptoSearch
  attr_reader :data

  def initialize(data)
    @data = data[:coins]
  end

end
