require 'rails_helper'

describe CryptoSearchService do
  context "class methods" do
    context "#members_by_state" do
      it "returns location in corddinits" do
        search = CryptoSearchService.get_crypto_name('Doge')
        expect(search).to be_a Hash
      end
      it "returns location in corddinits" do
        search = CryptoSearchService.top_7
        expect(search).to be_a Hash
      end
    end
  end
end
