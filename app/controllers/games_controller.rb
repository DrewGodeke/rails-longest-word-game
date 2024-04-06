class GamesController < ApplicationController
  def new
    @letters = Array.new(10) { ('A'..'Z').to_a.sample }
  end

  def score
    @word = params[:word]
    @letters = params[:grid].split(',') # Set @letters from the grid parameter
    valid_word = word_valid?(@letters, @word)

    if valid_word
      @result = "The word is a valid English word!"
    else
      @result = "The word cannot be built from the given grid."
    end
  end

  private

  def word_valid?(letters, word)
    # Your validation logic here
  end
end
