class SchoolsController < ApplicationController
  def index
    render template: 'schools/index.html.erb', locals: { school_list: School.all }
  end

  def show
    if School.exists?(params[:id])
      school = School.find(params[:id])
      render template: 'schools/show.html.erb', locals: { school: school }
    end
  end
end
