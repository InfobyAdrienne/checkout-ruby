class Shop 

  def checkout(items)
    
    if items == 'A'
      return 50
    elsif items == 'B'
      return 30
    elsif items == 'C'
      return 20 
    elsif items == 'D'
      return 15
    else
      return -1
    end 
  
  end 

end 