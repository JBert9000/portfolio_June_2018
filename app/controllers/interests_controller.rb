class InterestsController < ApplicationController

  def index
    @interest = Interest.all
  end

  def show
    render template: "interests/#{params[:interest]}"
  end

end
