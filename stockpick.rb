def stock_pick(stocks)
  stockDays = []
  min_price = stocks[0]
  min_index = 0

  profit = 0
  days = [0,0]
stocks.each_with_index do |stock, index|
  if stock < min_price
      min_price = stock
      min_index = index
  end
  if stock - min_price > profit
    profit = stock - min_price
    days = [min_index, index]
end

end


end

stock_pick([17,3,6,9,15,8,6,1,10])
