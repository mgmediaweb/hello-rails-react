class GreetingController < ApplicationController
  def index
    render json: { greeting: Greeting.all.sample.greting }, status: :ok
  end
end
