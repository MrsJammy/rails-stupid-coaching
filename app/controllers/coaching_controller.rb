class CoachingController < ApplicationController
  def answer
    @query = params[:query]
    @coach_message = coach_message(@query)
  end

  def ask
  end

private

  def coach_message(query)
    if query.downcase == "i am going to work right now!"
      ''
    elsif query.end_with?("?")
      "Silly question."
    else
      "I don't care!"
    end
  end

end
