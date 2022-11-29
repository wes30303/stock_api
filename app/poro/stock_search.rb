class StockSearch
  attr_reader :name

  def initialize(data)
    @name = data[:bestMatches][0][:"1. symbol"]
  end

end
