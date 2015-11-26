class ComplimentsController < ApplicationController
  def index
    @compliments = Compliment.all.order('driver')
  end
end
