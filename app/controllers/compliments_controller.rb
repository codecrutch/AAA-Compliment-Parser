class ComplimentsController < ApplicationController
  def index
    @compliments = Compliment.all
  end
end
