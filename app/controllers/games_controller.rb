require "json"
require "open-uri"

class GamesController < ApplicationController

  def new
    @letters = ('a'..'z').to_a.sample(10)
  end

  def score
    # url = "https://wagon-dictionary.herokuapp.com"
    # user_serialized = URI.open(url).read
    # result = JSON.parse(user_serialized)

    # puts "#{result[""]} - #{user["bio"]}"
    answer = params[:answer].chars
    game_all_letters = params[:letters].split
    @result = "Well done"
    raise

    answer.each do |answer_letter|
      if game_all_letters.include?(answer_letter)
        index_of_matched_letter = game_all_letters.index(answer_letter)
        game_all_letters.delete_at(index_of_matched_letter)
      else
        @result = "Sorry the word can't be built"
      end
    end


  end




end
