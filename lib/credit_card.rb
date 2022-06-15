class CreditCard

  attr_reader :card_number,
              :limit

  def initialize(card_number, limit)
    @card_number = card_number
    @limit = limit
  end

  def is_valid?
    sum = 0
    @card_number.split(//).each_with_index do | digit, index |
      index.even? ? sum += (digit.to_i * 2).digits.sum : sum += digit.to_i
    end
    sum % 10 == 0
  end

  def last_four
    @card_number[-4..-1]
  end
    
end
