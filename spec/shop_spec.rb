require './lib/shop'

describe Shop do 
  subject (:shop) { described_class.new }
  
  describe 'getting checkout totals' do
    it 'when item A is entered, the price of 50 returns' do
      expect(shop.checkout('A')).to eq 50
    end
  end  

end 
 