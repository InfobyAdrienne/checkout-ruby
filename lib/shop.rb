class Shop 

  def checkout(items)

    split_up_letters = items.chars

      replacements = {
        "A" => 50,
        "B" => 30,
        "C" => 20,
        "D" => 15,
      }
    
      each_letter_price = split_up_letters.map { |e|
          replacements.fetch(e, e)
      }
    
      if each_letter_price.all?(Integer) && (each_letter_price.empty? == false)
        return each_letter_price.sum
      else
        return -1
      end 
  end 
end 