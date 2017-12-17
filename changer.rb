class Changer
@@change = []

  def self.make_change(amount)
    @@change = []
    coins = [25, 10, 5, 1]
    until amount == 0 do
      coins.each do |coin|
        remainder = amount % coin
        until amount < coin
          calculation = amount - remainder
          num = calculation/coin
            num.times do
              @@change << coin
              amount -= coin
            end
        end
      end
    end
    return @@change
  end

end
