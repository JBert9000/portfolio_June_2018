class AdminsController < ApplicationController

  protect_from_forgery
  before_action :authenticate_admin!

def new
  
    @admin = Admin.find_by_email("jbertlik@gmail.com")
  if @admin.present?
   @admin.send_reset_password_instructions
   render :text => "updated"
  else
       render :text => "no such email"
  end

end

end
