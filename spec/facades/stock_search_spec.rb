require 'rails_helper'

RSpec.describe 'MapsFacade' do
  it 'returns instances of food with given ingredient' do
    stock = StockSearchFacade.get_name('Tesla')

    expect(stock).to be_a StockSearch
  end

end
