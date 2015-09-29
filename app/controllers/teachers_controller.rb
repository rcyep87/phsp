class TeachersController < ApplicationController

  def index
    render template: 'teachers/index.html.erb', locals: { teachers: Teacher.all }
  end

  def show
    if Teacher.exists?(params[:id])
      teacher = Teacher.find(params[:id])
      render template: 'teachers/show.html.erb', locals: { teacher: teacher }
    end
  end

end
