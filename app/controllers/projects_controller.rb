class ProjectsController < ApplicationController

  def index
    @projects = Project.all.order('created_at DESC')
  end

  def show
    render template: "projects/#{params[:project]}"
  end

end
