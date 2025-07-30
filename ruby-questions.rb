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
# def last_30_days(transactions)
#   transactions.select { |t| t[:date] >= Date.today - 30 }.sum { |t| t[:amount] }
# end


# last_30 = last_30_days(data)
# puts "last 30 sum #{last_30}"


# class Transaction < ApplicationRecord
#   scope :large_transactions, -> { where('amount >= ?', 10_000) }
# end


# large string sentence
# write a function that reverses the words in the sentence

sentence = "hello from rails"

# array_of_words = sentence.split(' ')

# # puts array_of_words.map { |w| w.reverse }.join(' ')

# puts array_of_words.reverse.join(' ')


sentence_two = "hello from rails. this is the second sentence. heres another one."

def reverse_sentences_in_paragraph(paragraph)
  sentences = paragraph.split('.')

  new_sentences = sentences.map { |s| s.split(' ').reverse.join(' ') }.join('. ')

  new_sentences + "."
end

puts reverse_sentences_in_paragraph(sentence_two)

# what does this method do
# it takes in a paragraph and returns each sentence reversed (ex. last word in sentence is now the first word)
# it 'raises an error if passed in argument is not a string' do
  #  
# end

# it 'reverses each sentence in the paragraph' do
  output = reverse_sentences_in_paragraph(sentence_two)
  
  expect(output.split(.).first).to eq('rails from hello')
# end


# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.

# Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

# def solution(number)
#   array = []
#   x = number - 1
#   while x >= 0
#     if x % 3 == 0 || x % 5 == 0
#     array << x
#   end
#     x -= 1
#   end
#   array.sum
# end

# refactor
# def solution(number)
#   x = number - 1
#   nums = (1..x).select { |n| n % 3 == 0 || n % 5 == 0 }
#   nums.sum
# end

# puts solution(10)


# Write a function that accepts an integer argument n and generates an array
# containing the pairs of integers [a, b] that satisfy the condition
# 0 <= a <= b <= n
def generate_pairs(n)
  array = []
  (0..n).each do |i|
    (i..n).each do |b|
      array << [i, b]
    end
  end
  array
end

puts generate_pairs(4)