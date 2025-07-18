require 'date'

data = [
  { amount: 150.0, date: Date.today - 5 },    # 5 days ago
  { amount: 200.0, date: Date.today - 15 },   # 15 days ago
  { amount: 50.0, date: Date.today - 31 },    # 31 days ago (outside 30-day window)
  { amount: 400.0, date: Date.today - 1 },    # 1 day ago
  { amount: 120.0, date: Date.today - 40 },   # 40 days ago (outside 30-day window)
  { amount: 75.0, date: Date.today - 29 }     # 29 days ago (inside 30-day window)
]

# def last_30_days(transactions)
#   recent_transactions = transactions.select { |t| t[:date] >= Date.today - 30 }
#   sum = 0
#   recent_transactions.each { |t| sum += t[:amount] }
#   sum
# end

# refactor
def last_30_days(transactions)
  transactions.select { |t| t[:date] >= Date.today - 30 }.sum { |t| t[:amount] }
end


last_30_days(data)