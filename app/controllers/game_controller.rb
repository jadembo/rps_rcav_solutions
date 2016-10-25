class GameController < ApplicationController
  def user_plays_anything
    @computer_move = ["rock", "paper", "scissors"].sample
    @user_move = params["move"]

    if @user_move == "rock"
      if @computer_move == "rock"
        @outcome = "tied"
      elsif @computer_move == "paper"
        @outcome = "lost"
      elsif @computer_move == "scissors"
        @outcome = "won"
      end
    elsif @user_move == "scissors"
      if @computer_move == "rock"
        @outcome = "lost"
      elsif @computer_move == "paper"
        @outcome = "won"
      elsif @computer_move == "scissors"
        @outcome = "tied"
      end
    elsif @user_move=="paper"
      if @computer_move == "rock"
        @outcome = "won"
      elsif @computer_move == "paper"
        @outcome = "tied"
      elsif @computer_move == "scissors"
        @outcome = "lost"
      end
    end
    render("user_plays_anything.html.erb")
  end
end
