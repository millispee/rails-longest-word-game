class GamesController < ApplicationController
  def new
    @letters = [*('A'..'Z')].sample(8)
  end

  def score
    # params["my_longest_word"].capitalize.split(//).each do |letter|
    #   if params["letters"].include? letter
    #     return @true
    #   end
    # end

   longest_word = params["my_longest_word"]
   letters = params["letters"]
   @results = valid?(longest_word, letters)

  end

  def valid?(longest_word, letters)
    longest_word.chars.all? do |letter|
    letters.include?(letter.upcase) && letters.count(letter.upcase) >= longest_word.chars.count(letter)
   end
  end

end
