require './lib/shop'

describe Shop do 
  subject (:shop) { described_class.new }
  
  describe 'getting checkout totals' do
    it 'when item A is entered, the price of 50 returns' do
      expect(shop.checkout('A')).to eq 50
    end

    it 'when item B is entered, the price of 30 returns' do
      expect(shop.checkout('B')).to eq 30 
    end

    it 'when item C is entered, the price of 20 returns' do
      expect(shop.checkout('C')).to eq 20 
    end

    it 'when item D is entered, the price of 30 returns' do
      expect(shop.checkout('D')).to eq 15
    end




  end  

end 
 