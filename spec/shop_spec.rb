require './lib/shop'

describe Shop do 
  subject (:shop) { described_class.new }
  
  describe 'getting checkout totals' do
    it 'items must be entered as a string' do 
      shop.checkout("A")
      expect("A").to be_an_instance_of(String)
    end

    it 'no items entered returns -1' do 
      expect(shop.checkout("")).to eq -1
    end

    it 'anything other than a capitalised string returns -1' do 
      expect(shop.checkout("abc")).to eq -1
    end
    
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

    it 'when AA is entered, the price of 100 returns' do 
      expect(shop.checkout('AA')).to eq 100
    end 

    it 'when AAC is entered, the price of 120 returns' do 
      expect(shop.checkout('AAC')).to eq 120
    end

    it 'when AAA is entered the price is 130, not 150' do 
      expect(shop.checkout('AAA')).to eq 130
    end

    it 'when AAAC is entered the price is 150' do 
      expect(shop.checkout('AAAC')).to eq 150
    end
  end  
end 
 