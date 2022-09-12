stock_prices = [17,3,6,9,15,8,6,1,10]

def stock_picker(prices)
    """
    For given stock prices array of each day, find the best day to buy and sell for most profit.
    Need to BUY first before SELL
    """
    prices.each_with_index.to_a.combination(2).to_a.max_by{|buy,sell| sell[0] - buy[0]}.map{|price, day| day}
end

p stock_picker(stock_prices) # [1,4] for a profit of $15 - $3 -> $12