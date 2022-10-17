class GreetingController < ApplicationController
  def index
    @greetings = Greeting.all
    @greeting = @greetings.sample
    render json: { greeting: @greeting.greting }, status: :ok
  end
end
