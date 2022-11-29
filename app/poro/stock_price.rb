class StockPrice
  attr_reader :name

  def initialize(data)
    @stock = data[:"Global Quote"][:"01. symbol"]
    @open = data[:"Global Quote"][:"02. open"]
    @high = data[:"Global Quote"][:"03. high"]
    @low = data[:"Global Quote"][:"04. low"]
    @current_price = data[:"Global Quote"][:"05. price"]
    @volume = data[:"Global Quote"][:"06. volume"]
    @price_change = data[:"Global Quote"][:"09. change"]
    @precent_change = data[:"Global Quote"][:"10. change percent"]
  end

end
