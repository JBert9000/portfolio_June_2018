class InterestsController < ApplicationController

  def index
    @interest = Interest.all
  end

  def show

    @key = ENV['GOOGLE_KEY']

    render template: "interests/#{params[:interest]}"
  end

end
