require 'rails_helper'

describe StockSearchService do
  context "class methods" do
    context "#members_by_state" do
      it "returns location in corddinits" do
        search = StockSearchService.get_name('Tesla')
        expect(search).to be_a Hash
      end
      it "returns location in corddinits" do
        search = StockSearchFacade.get_name('Tesla')
        price = StockSearchFacade.get_stock_price(search)
        
      end
    end
  end
end
